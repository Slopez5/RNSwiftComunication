import Foundation
import React

@objc(GenericBridgeModule)
class GenericBridgeModule: RCTEventEmitter {
    static var shared: GenericBridgeModule?
    
    override init() {
        super.init()
        GenericBridgeModule.shared = self
    }
    
    override class func moduleName() -> String! {
        return "GenericBridgeModule"
    }
    
    override func supportedEvents() -> [String]! {
        return ["onGenericEvent"]
    }
    
    @objc func sendEventToReact(_ eventName: String, data: Any) {
        if hasListeners {
            sendEvent(withName: eventName, body: data)
        }
    }
    
    @objc func receiveDataFromReact(_ data: NSDictionary, resolver: RCTPromiseResolveBlock, rejecter: RCTPromiseRejectBlock) {
        guard let type = data["type"] as? String else {
            rejecter("400", "Invalid Data Type", nil)
            return
        }
        
        switch type {
        case "string":
            if let value = data["value"] as? String {
                print("Received String: \(value)")
                resolver(["received": value])
            } else {
                rejecter("400", "Expected a String", nil)
            }
        case "number":
            if let value = data["value"] as? NSNumber {
                print("Received Number: \(value)")
                resolver(["received": value])
            } else {
                rejecter("400", "Expected a Number", nil)
            }
        case "boolean":
            if let value = data["value"] as? Bool {
                print("Received Boolean: \(value)")
                resolver(["received": value])
            } else {
                rejecter("400", "Expected a Boolean", nil)
            }
        default:
            rejecter("400", "Unsupported data type", nil)
        }
    }
}
