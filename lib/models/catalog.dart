class CatalogModel {
  static final items = [
    Item(1, "iPhone 12 Pro", "Appple Phone 12th gen", 999, "#33505a",
        "https://i.pinimg.com/originals/ce/af/4a/ceaf4a5e80a532289e4c2f33fe975b37.jpg")
  ];

  static int itemsLen = CatalogModel.items.length;
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String url;

  Item(this.id, this.name, this.desc, this.price, this.color, this.url);
}
