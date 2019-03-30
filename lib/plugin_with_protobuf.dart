import 'dart:async';

import 'package:flutter/services.dart';

class PluginWithProtobuf {
  static const MethodChannel _channel =
      const MethodChannel('plugin_with_protobuf');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
