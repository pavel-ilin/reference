const driver = {starterKey: "starter value"}

function updateDriverWithKeyAndValue(driver, key, value){
    const newDriver = {...driver}
    newDriver[key] = value
    return newDriver
}

function destructivelyUpdateDriverWithKeyAndValue(driver, key, value){
    driver[key] = value
    return driver
}

function deleteFromDriverByKey(driver, key){
    let editedDriver = {...driver}
    delete editedDriver[key]
    return editedDriver
}

function destructivelyDeleteFromDriverByKey(driver,key){
    delete driver[key]
    return driver
}