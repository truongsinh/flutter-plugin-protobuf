import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_with_protobuf/plugin_with_protobuf.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugin_with_protobuf');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PluginWithProtobuf.platformVersion, '42');
  });
}
