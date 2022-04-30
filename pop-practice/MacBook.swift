import Foundation

struct MacBook {
    let allowedChargeWatt: WattPerHour
    var currentBatteryCapacity: WattPerHour
    let maximumBatteryCapacity: WattPerHour = 100
    
    mutating func chargeBattery(charger: Chargeable) {
        var hours: Int = 0
        while currentBatteryCapacity < maximumBatteryCapacity {
            currentBatteryCapacity += charger.convert(chargeableWattPerHour: allowedChargeWatt)
            hours += 1
        }
        
        currentBatteryCapacity = maximumBatteryCapacity
        print("완전히 충전하기까지 걸린 시간: \(hours)시간")
    }
}
