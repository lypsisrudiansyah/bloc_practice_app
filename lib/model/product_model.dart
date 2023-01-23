
class Product {
    Product({
        required this.id,
        required this.title,
        required this.description,
        required this.price,
        required this.imageUrl,
    });

    String id;
    String title;
    String description;
    double price;
    String imageUrl;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        imageUrl: json["imageUrl"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "imageUrl": imageUrl,
    };
}
