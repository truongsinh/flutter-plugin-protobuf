import Flutter
import UIKit

func getMyPerson() -> Person {
    let p = Person.with {
        $0.name = "TruongSinh"
        $0.supervisorOf = [
            Person.with {
                $0.name = "Jane Dane"
                $0.addresses = [
                    UsaAddress.with{
                        $0.streetNameAndNumber = "1 Infinity Loop"
                        $0.city = "Cupertino"
                        $0.state = UsaState.ca
                        $0.postCode = 95014
                    },
                    UsaAddress.with {
                        $0.streetNameAndNumber = "1 Microsoft Way"
                        $0.city = "Redmond"
                        $0.state = UsaState.wa
                        $0.postCode = 98052
                    },
                ]
            },
            Person.with {
                $0.name = "Joe Doe"
                $0.addresses = [
                    UsaAddress.with{
                        $0.streetNameAndNumber = "1 Infinity Loop"
                        $0.city = "Cupertino"
                        $0.state = UsaState.ca
                        $0.postCode = 95014
                    },
                    UsaAddress.with {
                        $0.streetNameAndNumber = "1 Microsoft Way"
                        $0.city = "Redmond"
                        $0.state = UsaState.wa
                        $0.postCode = 98052
                    },
                ]
            }
        ]
    }
    return p;
}

public class SwiftPluginWithProtobufPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "plugin_with_protobuf", binaryMessenger: registrar.messenger())
        let instance = SwiftPluginWithProtobufPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        do {
            result(try getMyPerson().serializedData())
        } catch {
            result(FlutterError(code: "Cannot serialize data", message: nil, details: nil))
        }
    }
}
