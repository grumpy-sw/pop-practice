import Foundation

typealias Watt = Int
typealias WattPerHour = Int

protocol Chargeable {
    var maximumWattPerHour: WattPerHour { get set }
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}
