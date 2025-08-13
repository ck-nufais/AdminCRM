class Chat {
  final String id;
  final List<String> participants; // user IDs
  final DateTime createdAt;

  Chat({
    required this.id,
    required this.participants,
    required this.createdAt,
  });
}