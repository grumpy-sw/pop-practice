import Foundation

typealias Watt = Int
typealias WattPerHour = Int

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iphoneCharger = Charger(maximumWattPerHour: 18)
let ipadCharger = Charger(maximumWattPerHour: 30)
let macBookChargerWith96Watt = Charger(maximumWattPerHour: 96)
let macBookChargerWith106Watt = Charger(maximumWattPerHour: 106)

var myMacBook = MacBook(allowedChargeWatt: 60, currentBatteryCapacity: 10)
myMacBook.chargeBattery(charger: macBookChargerWith96Watt)
