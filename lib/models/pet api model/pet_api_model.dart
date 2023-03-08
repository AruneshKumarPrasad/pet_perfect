class PetAPIModel {
  PetAPIModel({
    required this.fileSizeBytes,
    required this.url,
  });
  late final int fileSizeBytes;
  late final String url;

  PetAPIModel.fromJson(Map<String, dynamic> json) {
    fileSizeBytes = json['fileSizeBytes'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['fileSizeBytes'] = fileSizeBytes;
    data['url'] = url;
    return data;
  }
}
