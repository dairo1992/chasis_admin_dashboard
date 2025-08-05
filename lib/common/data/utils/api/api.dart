enum API {
  authentication(value: 'auth'),
  unknown(value: "unknown");

  const API({required this.value});

  final String value;
}
