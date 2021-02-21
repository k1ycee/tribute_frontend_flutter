class Tributes {
  String sId;
  String name;
  String body;
  String createdAt;
  String updatedAt;
  int iV;

  Tributes(
      {this.sId,
      this.name,
      this.body,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Tributes.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    body = json['body'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['body'] = this.body;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}