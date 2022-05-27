class NewCoursList {
  String course_name;
  String image_url;

  NewCoursList({
    required this.course_name,
    required this.image_url,
  });

  Map<String, dynamic> toMap() {
    return {
      'category_name': this.course_name,
      'image_url': this.image_url,
    };
  }

  factory NewCoursList.fromMap(Map<String, dynamic> map) {
    return NewCoursList(
      course_name: map['category_name'] as String,
      image_url: map['image_url'] as String,
    );
  }
}
