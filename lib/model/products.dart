class CategorsList{

  String category_name;
  String image_url;

  CategorsList({

    required this.category_name,
    required this.image_url,
  });

  Map<String, dynamic> toMap() {
    return {

      'category_name': this.category_name,
      'image_url': this.image_url,
    };
  }

  factory CategorsList.fromMap(Map<String, dynamic> map) {
    return CategorsList(
      category_name: map['category_name'] as String,
      image_url: map['image_url'] as String,
    );
  }
}