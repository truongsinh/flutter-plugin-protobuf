///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const UsaState$json = const {
  '1': 'UsaState',
  '2': const [
    const {'1': 'AZ', '2': 0},
    const {'1': 'CA', '2': 5},
    const {'1': 'WA', '2': 47},
    const {'1': 'WI', '2': 49},
  ],
};

const Person$json = const {
  '1': 'Person',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'addresses', '3': 2, '4': 3, '5': 11, '6': '.UsaAddress', '10': 'addresses'},
    const {'1': 'supervisorOf', '3': 3, '4': 3, '5': 11, '6': '.Person', '10': 'supervisorOf'},
  ],
};

const UsaAddress$json = const {
  '1': 'UsaAddress',
  '2': const [
    const {'1': 'streetNameAndNumber', '3': 1, '4': 1, '5': 9, '10': 'streetNameAndNumber'},
    const {'1': 'streetNameAndNumber2', '3': 2, '4': 1, '5': 9, '10': 'streetNameAndNumber2'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.UsaState', '10': 'state'},
    const {'1': 'postCode', '3': 5, '4': 1, '5': 13, '10': 'postCode'},
  ],
};

