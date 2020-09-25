arangodb [installation](https://www.arangodb.com/download-major/ubuntu/)


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
