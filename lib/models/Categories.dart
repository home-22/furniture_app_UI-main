class Category {
  final String? id, title, image;
  final int numOfProducts;

  Category(
      {required this.id,
      required this.title,
      this.image,
      required this.numOfProducts});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      title: json["title"],
      numOfProducts: json["numOfProducts"],
    );
  }
}

Category category = Category(
  id: "1",
  title: "Armchair",
  image: "https://i.imgur.com/JqKDdxj.png",
  numOfProducts: 100,
);
