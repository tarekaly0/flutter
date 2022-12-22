class Item {
  String imgpath;
  double price;
  String name;
  Item({required this.imgpath, required this.name, required this.price});
}

final List<Item> items = [
  Item(
    imgpath: "assets/img/1.webp", name: "product1", price: 150.99),
  Item(
    imgpath: "assets/img/2.jpg", name: "product2", price: 212.99),
  Item(
    imgpath: "assets/img/3.jpg", name: "product3", price: 124.2),
  Item(
    imgpath: "assets/img/4.webp", name: "product4", price: 200),
  Item(
    imgpath: "assets/img/5.jpg", name: "product5", price: 301.1),
  Item(
    imgpath: "assets/img/6.jpg", name: "product6", price: 140.9),
  Item(
    imgpath: "assets/img/8.jpg", name: "product7", price: 120.6),
  Item(
    imgpath: "assets/img/9.jpg", name: "product8", price: 159.55),
  Item(
    imgpath: "assets/img/10.jpg", name: "product10", price: 200),
]