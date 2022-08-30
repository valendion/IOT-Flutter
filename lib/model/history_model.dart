class HistoryModel {
  late String nameComponent;
  late String imagePath;
  late String time;
  late String action;

  HistoryModel({
    required this.nameComponent,
    required this.imagePath,
    required this.time,
    required this.action,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return HistoryModel(
        nameComponent: json['nameComponent'],
        imagePath: json['imagePath'],
        time: json['time'],
        action: json['action']);
  }
}
