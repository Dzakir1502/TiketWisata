class ProductModel {
    final String productName;
    final String type;
    final int price;
    int quantity;

    ProductModel({
        required this.productName,
        required this.type,
        required this.price,
        this.quantity = 1,
    });
}

final products = [
    ProductModel(
        productName: 'Tiket Masuk dewasa',
        type: 'Nusantara',
        price: 50000,
    ),
    ProductModel(
        productName: 'Tiket Masuk Anak',
        type: 'Nusantara',
        price: 20000,
    ),
    ProductModel(
        productName: 'Tiket Masuk dewasa',
        type: 'Mancanegara',
        price: 150000,
    ),
    ProductModel(
        productName: 'Tiket Masuk Anak',
        type: 'Mancanegara',
        price: 120000,
    ),
];
