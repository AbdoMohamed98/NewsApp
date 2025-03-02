class Getnewsmodel {
  final String title;
  final String description;
  final String image;

  Getnewsmodel(
      {required this.title, required this.description, required this.image});
  factory Getnewsmodel.fromjson(jsonData) {
    return Getnewsmodel(title: jsonData['results'][0]['title'],
     description:jsonData['results'][0]['description'] ,
      image: jsonData['results'][0]['image_url']);
  }
}
