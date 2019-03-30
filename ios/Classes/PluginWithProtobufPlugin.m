#import "PluginWithProtobufPlugin.h"
#import <plugin_with_protobuf/plugin_with_protobuf-Swift.h>

@implementation PluginWithProtobufPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginWithProtobufPlugin registerWithRegistrar:registrar];
}
@end
