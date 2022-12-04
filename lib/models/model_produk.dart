class Product {
  final id, price;
  final title, description, image;

  Product({
    int? this.id,
    int? this.price,
    String? this.title,
    String? this.description,
    String? this.image,
  });
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 567000,
    title: "Lemari Hias Kecil",
    image: "assets/images/gambar1.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 689000,
    title: "Meja Hias",
    image: "assets/images/gambar2.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 567000,
    title: "Lemari Hias Kecil",
    image: "assets/images/gambar1.jpeg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
