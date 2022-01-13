import 'dart:ffi';

final Map<String, dynamic> scytheMock = {
  'title': 'Scythe',
  'inputs': [
    {
      'id': 'scythe_popularity',
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Popularity',
      'value_type': 'passive',
      'action': null,
      'dependencies': [],
    },
    {
      'id': 'scythe_stars',
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Achieved Stars',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'id': 'scythe_popularity', 'max_value': 6, 'multiplier': 3},
        {'id': 'scythe_popularity', 'max_value': 12, 'multiplier': 4},
        {'id': 'scythe_popularity', 'max_value': 18, 'multiplier': 5},
      ],
    },
    {
      'id': 'scythe_territories',
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Controlled Territories',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'id': 'scythe_popularity', 'max_value': 6, 'multiplier': 2},
        {'id': 'scythe_popularity', 'max_value': 12, 'multiplier': 3},
        {'id': 'scythe_popularity', 'max_value': 18, 'multiplier': 4},
      ],
    },
    {
      'id': 'scythe_factory',
      'type': 'dropdown',
      'default_multiplier': 1,
      'asnwers': [
        {"id": 'scythe_factory_positive', "value": 3, "label": "Yes"},
        {"id": 'scythe_factory_negative', "value": 0, "label": "No"},
      ],
      'label': 'Factory Owned',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'id': 'scythe_popularity', 'max_value': 6, 'multiplier': 2},
        {'id': 'scythe_popularity', 'max_value': 12, 'multiplier': 3},
        {'id': 'scythe_popularity', 'max_value': 18, 'multiplier': 4},
      ],
    },
    {
      'id': 'scythe_recourses',
      'type': 'number',
      'default_multiplier': 0.5,
      'label': 'Collected Resources',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'id': 'scythe_popularity', 'max_value': 6, 'multiplier': 1},
        {'id': 'scythe_popularity', 'max_value': 12, 'multiplier': 2},
        {'id': 'scythe_popularity', 'max_value': 18, 'multiplier': 3},
      ],
    },
    {
      'id': 'scythe_building',
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Ponts for Building objective',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [],
    },
    {
      'id': 'scythe_coins',
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Coins',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [],
    },
  ],
};