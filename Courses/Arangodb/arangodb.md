arangodb [installation](https://www.arangodb.com/download-major/ubuntu/)

Start arangodb docker container:
`docker run -p 8529:8529 -e ARANGO_ROOT_PASSWORD=your_password arangodb/arangodb:3.7.7`

Start arangodb:
`arangod`

Connect to arangodb:
`arangosh`

To see visual interface navigate to:
`http://127.0.0.1:8529`

# AQL

Insert new document:
`INSERT {_key: 'item1'} INTO 'collection_name' RETURN NEW'`

Read document:
`RETURN DOCUMENT('collection_name/item1')`

Read multiply document:
`RETURN DOCUMENT('collection_name', ['item1', 'item2', 'item3', 'item4'])`

Update document:
`UPDATE {_key: 'item1'} WITH {newVal: 1234} IN collection_name
RETURN NEW`

Update multiply documents:
`FOR docs IN ['item1']
UPDATE docs WITH {newVal: 1234} IN collection_name
RETURN NEW`

Remove documents:
`FOR docs IN ['item1']
REMOVE docs in collection_name`

Filter to find documents:
`FOR item IN collection_name
    FILTER item.attribute == "test"
    return item`

## GeoJSON

Points on the map:
`FOR airport IN airports
FILTER airport.state == "TX"
RETURN GEO_POINT(airport.long, airport.lat)`

Distance between points:
`FOR airport IN airports
FILTER GEO_DISTANCE([-97.79696778, 31.42127556], [airport.long, airport.lat]) <= 50000
RETURN airport`

## Joints

`FOR airport IN airports
    FILTER airport.city == "Dallas"
    FOR flight IN flights
        FILTER flight._to == airport._id

        RETURN {
            "airport": airport.name,
            "flight": flight.FlightNum
        }`

## Grouping

Group and sort:
`FOR airport IN airports
    COLLECT state = airport.state WITH COUNT INTO total
    SORT total DESC
    RETURN {
        "State": state,
        "Total airports": total
    }`

## Aggregation

`FOR flight IN flights
    COLLECT AGGREGATE
    minDist = MIN(flight.Distance),
    maxDist = MAX(flight.Distance)
    RETURN {
        "Shorter flight": minDist,
        "Longest flight": maxDist
    }`

## Graphs

`FOR airport IN airports
    FILTER airport.city == 'San Francisco'
    FILTER airport.vip == true
    FOR v, e, p IN 1..1 OUTBOUND
    airport flights
    FILTER v._id == 'airports/KOA'
    RETURN p`

`FOR airport IN airports
    FILTER airport.city == 'San Francisco'
    FILTER airport.vip == true
    FOR v, e, p IN 2..3 OUTBOUND
    airport flights
    FILTER v._id == 'airports/KOA'
    FILTER p.edges[*].Month ALL == 1
    FILTER p.edges[*].Day ALL == 1
    FILTER DATE_ADD(p.edges[0].ArrTImeUTC, 20, 'minutes') < p.edges[1].DepTimeUTC
    FILTER DATE_ADD(p.edges[1].ArrTImeUTC, 20, 'minutes') < p.edges[2].DepTimeUTC
    LIMIT 10
    RETURN p`

## Indexes

coming soon
