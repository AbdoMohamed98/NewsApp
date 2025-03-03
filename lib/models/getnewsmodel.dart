class Getnewsmodel {
  final String title;
  final String description;
  final String? image; // Nullable for better safety

  Getnewsmodel({required this.title, required this.description, this.image});

  factory Getnewsmodel.fromjson(Map<String, dynamic> jsonData) {
    return Getnewsmodel(
      title: jsonData['title'] ?? 'No Title',
      description: jsonData['description'] ?? 'No Description',
      image: jsonData['image_url'], // Nullable field
    );
  }
}
