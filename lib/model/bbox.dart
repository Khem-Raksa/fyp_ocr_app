class Bbox {
  int? x;
  int? y;
  int? w;
  int? h;

  Bbox({required this.x, required this.y, required this.w, required this.h});

  Bbox.fromJson(Map<String, dynamic> json) {
    x = json['x'].round();
    y = json['y'].round();
    w = json['w'].round();
    h = json['h'].round();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['x'] = x;
    data['y'] = y;
    data['w'] = w;
    data['h'] = h;
    return data;
  }
}
