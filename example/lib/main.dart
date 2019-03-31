import 'package:flutter/material.dart';
import 'package:plugin_with_protobuf/plugin_with_protobuf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'RobotoMono',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FutureBuilder(
              future: PluginWithProtobuf.myPerson,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Text('Loading');
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                return PersonWidget(snapshot.data);
              }),
        ),
      ),
    );
  }
}

class PersonWidget extends StatelessWidget {
  PersonWidget(this._person, {String indent: ''}) : this._indent = indent;
  final Person _person;
  final String _indent;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('$_indent ${_person.name}'),
      ]
        ..addAll(
          _person.addresses.isEmpty
              ? []
              : [
                  Text('$_indent has address:'),
                ]
            ..addAll(
              _person.addresses.map(
                (p) => UsaAddressWidget(p, indent: '$_indent--'),
              ),
            ),
        )
        ..addAll(
          _person.supervisorOf.isEmpty
              ? []
              : [
                  Text('$_indent is the supervisor of:'),
                ]
            ..addAll(
              _person.supervisorOf.map(
                (p) => PersonWidget(p, indent: '$_indent--'),
              ),
            ),
        ),
    );
  }
}

class UsaAddressWidget extends StatelessWidget {
  UsaAddressWidget(this._address, {String indent: ''}) : this._indent = indent;
  final UsaAddress _address;
  final String _indent;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('$_indent ${_address.streetNameAndNumber}'),
      ]
        ..addAll(_address.streetNameAndNumber2.isEmpty
            ? []
            : Text('$_indent${_address.streetNameAndNumber2}'))
        ..add(
          Text(
              '${List.filled(_indent.length, ' ').join('')} ${_address.city}, ${_address.state} ${_address.postCode}'),
        ),
    );
  }
}
