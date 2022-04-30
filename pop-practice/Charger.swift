import Foundation

struct Charger: Chargeable {
    var maximumWattPerHour: WattPerHour
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        return maximumWattPerHour > chargeableWattPerHour ? chargeableWattPerHour : maximumWattPerHour
    }
    
    
}
