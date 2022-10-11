class DashboardModel{
  late final int id;
  late final String title;
  late final double price;
  late final String description;
  late final String image;

  DashboardModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });
  DashboardModel.formJson(Map<String , dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
  }
}