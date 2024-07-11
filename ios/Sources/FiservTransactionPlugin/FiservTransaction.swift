import Foundation

@objc public class FiservTransaction: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
