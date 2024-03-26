class ShoeModel {
  String shoeName;
  String img;
  double rating;
  double price;
  String brandName;
  String description;

  ShoeModel({
    required this.shoeName,
    required this.price,
    required this.rating,
    required this.brandName,
    required this.img,
    required this.description,
  });
}
class CategoryModel {
  String name;
  String icon;
  CategoryModel({required this.name, required this.icon});
}