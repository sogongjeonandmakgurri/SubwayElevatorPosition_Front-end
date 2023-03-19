class ConvertToFromJson {
  double lat;  //위도
  double lng; // 경도
  
  ConvertToFromJson({
    required this.lat,
    required this.lng,
  });

  Map<String, dynamic> toJson() {
    return {
      'lat': this.lat,
      'lng': this.lng,
    };
  }

  factory ConvertToFromJson.fromJson(Map<String, dynamic> json) {
    return ConvertToFromJson(
      lat: json['name'] as double,
      lng: json['age'] as double,
    );
  }
}