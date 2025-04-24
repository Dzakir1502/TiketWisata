class HistoryModel {
  final String name;
  final int price;
  final DateTime dateTime;

  HistoryModel({
    required this.name,
    required this.price,
    required this.dateTime,
  });
}

List<HistoryModel> histories = [
  HistoryModel(
    name: 'Order 1',
    price: 100,
    dateTime: DateTime(2025, 1, 1, 10, 30),
  ),
  HistoryModel(
    name: 'Order 2',
    price: 100,
    dateTime: DateTime(2025, 2, 3, 1, 30),
  ),
  HistoryModel(
    name: 'Order 3',
    price: 100,
    dateTime: DateTime(2025, 14, 11, 11, 30),
  ),
  HistoryModel(
    name: 'Order 4',
    price: 100,
    dateTime: DateTime(2022, 3, 9, 2, 30),
  ),
];
