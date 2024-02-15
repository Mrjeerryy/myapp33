class catelogmodel {
  static final items = [
    myitems(
        id: "1",
        name: "Samsung Galaxy S21",
        description:
            "The Samsung Galaxy S21 is a flagship Android smartphone known for its powerful camera and high-resolution display.",
        price: 799.99,
        image_url: "assets/images/login.png",
        color_code: "#0070D1")
  ];
}

class myitems {
  final String id;
  final String name;
  final String description;
  final num price;
  final String image_url;
  final String color_code;

  myitems(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image_url,
      required this.color_code});
}
