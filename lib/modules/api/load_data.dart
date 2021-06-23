class LoadData {
  final String image;
  final String url;
  final String source;
  final String label;


  LoadData({this.image,this.url,this.source,this.label});

  factory LoadData.fromJson(Map<String, dynamic> json) {
    return LoadData(
      image: json['image'],
      url: json['url'],
      source: json['label'],
      label: json['label'],
    );
  }
}