///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class UsaState extends $pb.ProtobufEnum {
  static const UsaState AZ = const UsaState._(0, 'AZ');
  static const UsaState CA = const UsaState._(5, 'CA');
  static const UsaState WA = const UsaState._(47, 'WA');
  static const UsaState WI = const UsaState._(49, 'WI');

  static const List<UsaState> values = const <UsaState> [
    AZ,
    CA,
    WA,
    WI,
  ];

  static final Map<int, UsaState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UsaState valueOf(int value) => _byValue[value];

  const UsaState._(int v, String n) : super(v, n);
}

