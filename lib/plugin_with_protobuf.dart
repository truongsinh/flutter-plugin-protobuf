import 'dart:typed_data' show Uint8List;

import 'package:flutter/services.dart' show MethodChannel;
import 'package:plugin_with_protobuf/protos/person.pb.dart' show Person;
export 'package:plugin_with_protobuf/protos/person.pb.dart'
    show Person, UsaAddress;

class PluginWithProtobuf {
  static const MethodChannel _channel =
      const MethodChannel('plugin_with_protobuf');

  static Future<Person> get myPerson async {
    final Uint8List rawData = await _channel.invokeMethod('getPlatformVersion');
    final Person person = Person.fromBuffer(rawData);
    return person;
  }
}
