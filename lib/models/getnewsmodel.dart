class Getnewsmodel {
  final String title;
  final String description;
  final String image;

  Getnewsmodel({required this.title, required this.description, required this.image});

  factory Getnewsmodel.fromjson(Map<String, dynamic> jsonData) {
    return Getnewsmodel(
      title: jsonData['title'] ?? 'No Title',
      description: jsonData['description'] ?? 'No Description',
      image: jsonData['image_url'] ?? 'https://via.placeholder.com/150', // Placeholder image
    );
  }
}
