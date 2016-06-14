//: Playground - noun: a place where people can play

import UIKit

enum TransportType {
    case Moto
    case Car
    case Bus
}

class Person {
    var name: String
    
    init (name: String){
        self.name = name
    }
    
}

class Driver : Person {
    var licence: DriverLisence?
    var transports: Transport?
    
    init (name: String, licence: DriverLisence?){
        self.licence = licence
        super.init(name: name)
        
    }
}

class Parking {
    var transports: [Transport]
    
    init ( transports: [Transport]){
        self.transports = transports
    }
}

class DriverLisence {
    let licenceType: TransportType
    
    init(licenceType: TransportType ){
        self.licenceType = licenceType
    }
}

class Transport {
    let vehicleType: TransportType
    let model: String
    
    init(vehicleType: TransportType, model: String ){
        self.vehicleType = vehicleType
        self.model = model
    }
}
let car1 = Transport(vehicleType: .Car, model: "Honda")
let bus1 = Transport(vehicleType: .Bus, model: "Mersedes")
let moto1 = Transport(vehicleType: .Moto, model: "Yamaha")
let car2 = Transport(vehicleType: .Car, model: "BMW")
let moto2 = Transport(vehicleType: .Moto, model: "Yava")

let vehicles = [car1, bus1, moto1, car2, moto2]

let parking = Parking(transports: vehicles)
let licence = DriverLisence(licenceType: .Bus)

let driver1 = Driver (name: "Vasya", licence: )
let driver2 = Driver (name: "Misha", licence: <#T##DriverLisence?#>)
let driver3 = Driver (name: "Misha", licence: <#T##DriverLisence?#>)
let driver4 = Driver (name: "Anton", licence: <#T##DriverLisence?#>)

