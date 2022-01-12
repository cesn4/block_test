final Map<String, dynamic> scytheMock = {
  'title': 'Scythe',
  'inputs': [
    {
      'id': 'scythe_popularity',
      'type': 'number',
      'value': null,
      'default_multiplier': 1,
      'label': 'Popularity',
      'action': 'passive',
      'dependency': [],
    },
    {
      'id': 'scythe_stars',
      'value': null,
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Achieved Stars',
      'value_type': 'passive',
      'action': 'increment',
      'dependencies': [
        {'input_id': 'scythe_stars', 'min_value': 0, 'multiplier': 3},
        {'input_id': 'scythe_stars', 'min_value': 7, 'multiplier': 4},
        {'input_id': 'scythe_stars', 'min_value': 13, 'multiplier': 5},
      ],
    },
    {
      'id': 'scythe_territories',
      'value': null,
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Controlled Territories',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'input_id': 'scythe_stars', 'min_value': 0, 'multiplier': 2},
        {'input_id': 'scythe_stars', 'min_value': 7, 'multiplier': 3},
        {'input_id': 'scythe_stars', 'min_value': 13, 'multiplier': 4},
      ],
    },
    {
      'id': 'scythe_factory',
      'value': 3,
      'type': 'radio',
      'default_multiplier': 1,
      'label': 'Factory Owned',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'input_id': 'scythe_stars', 'min_value': 0, 'multiplier': 2},
        {'input_id': 'scythe_stars', 'min_value': 7, 'multiplier': 3},
        {'input_id': 'scythe_stars', 'min_value': 13, 'multiplier': 4},
      ],
    },
    {
      'id': 'scythe_recourses',
      'value': null,
      'type': 'number',
      'default_multiplier': 0.5,
      'label': 'Collected Resources',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [
        {'input_id': 'scythe_stars', 'min_value': 0, 'multiplier': 1},
        {'input_id': 'scythe_stars', 'min_value': 7, 'multiplier': 2},
        {'input_id': 'scythe_stars', 'min_value': 13, 'multiplier': 3},
      ],
    },
    {
      'id': 'scythe_building',
      'value': null,
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Ponts for Building objective',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [],
    },
    {
      'id': 'scythe_coins',
      'value': null,
      'type': 'number',
      'default_multiplier': 1,
      'label': 'Coins',
      'value_type': 'active',
      'action': 'increment',
      'dependencies': [],
    },
  ],
};
