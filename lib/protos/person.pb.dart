///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'person.pbenum.dart';

export 'person.pbenum.dart';

class Person extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Person')
    ..aOS(1, 'name')
    ..pc<UsaAddress>(2, 'addresses', $pb.PbFieldType.PM,UsaAddress.create)
    ..pc<Person>(3, 'supervisorOf', $pb.PbFieldType.PM,Person.create)
    ..hasRequiredFields = false
  ;

  Person() : super();
  Person.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Person.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Person clone() => new Person()..mergeFromMessage(this);
  Person copyWith(void Function(Person) updates) => super.copyWith((message) => updates(message as Person));
  $pb.BuilderInfo get info_ => _i;
  static Person create() => new Person();
  Person createEmptyInstance() => create();
  static $pb.PbList<Person> createRepeated() => new $pb.PbList<Person>();
  static Person getDefault() => _defaultInstance ??= create()..freeze();
  static Person _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  List<UsaAddress> get addresses => $_getList(1);

  List<Person> get supervisorOf => $_getList(2);
}

class UsaAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UsaAddress')
    ..aOS(1, 'streetNameAndNumber')
    ..aOS(2, 'streetNameAndNumber2')
    ..aOS(3, 'city')
    ..e<UsaState>(4, 'state', $pb.PbFieldType.OE, UsaState.AZ, UsaState.valueOf, UsaState.values)
    ..a<int>(5, 'postCode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  UsaAddress() : super();
  UsaAddress.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UsaAddress.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UsaAddress clone() => new UsaAddress()..mergeFromMessage(this);
  UsaAddress copyWith(void Function(UsaAddress) updates) => super.copyWith((message) => updates(message as UsaAddress));
  $pb.BuilderInfo get info_ => _i;
  static UsaAddress create() => new UsaAddress();
  UsaAddress createEmptyInstance() => create();
  static $pb.PbList<UsaAddress> createRepeated() => new $pb.PbList<UsaAddress>();
  static UsaAddress getDefault() => _defaultInstance ??= create()..freeze();
  static UsaAddress _defaultInstance;

  String get streetNameAndNumber => $_getS(0, '');
  set streetNameAndNumber(String v) { $_setString(0, v); }
  bool hasStreetNameAndNumber() => $_has(0);
  void clearStreetNameAndNumber() => clearField(1);

  String get streetNameAndNumber2 => $_getS(1, '');
  set streetNameAndNumber2(String v) { $_setString(1, v); }
  bool hasStreetNameAndNumber2() => $_has(1);
  void clearStreetNameAndNumber2() => clearField(2);

  String get city => $_getS(2, '');
  set city(String v) { $_setString(2, v); }
  bool hasCity() => $_has(2);
  void clearCity() => clearField(3);

  UsaState get state => $_getN(3);
  set state(UsaState v) { setField(4, v); }
  bool hasState() => $_has(3);
  void clearState() => clearField(4);

  int get postCode => $_get(4, 0);
  set postCode(int v) { $_setUnsignedInt32(4, v); }
  bool hasPostCode() => $_has(4);
  void clearPostCode() => clearField(5);
}

