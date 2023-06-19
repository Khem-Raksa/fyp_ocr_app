class Result {
  List<String>? text;
  List<Bbox>? bbox;

  Result({this.text, this.bbox});

  Result.fromJson(Map<String, dynamic> json) {
    text = json['text'].cast<String>();
    if (json['bbox'] != null) {
      bbox = <Bbox>[];
      json['bbox'].forEach((v) {
        bbox!.add(Bbox.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (bbox != null) {
      data['bbox'] = bbox!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bbox {
  int? x;
  int? y;
  int? w;
  int? h;

  Bbox({this.x, this.y, this.w, this.h});

  Bbox.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    w = json['w'];
    h = json['h'];
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
