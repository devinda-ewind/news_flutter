class SourceModel {
  late String name;
  late String? id;

  SourceModel({ this.id, required this.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(id: json['id'], name: json['name']);
  }
}
