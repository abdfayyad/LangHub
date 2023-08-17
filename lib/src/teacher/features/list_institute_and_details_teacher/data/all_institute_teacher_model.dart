
class AllInstituteTeacherModel {
  int? status;
  String? message;
  List<Data>? data;

  AllInstituteTeacherModel({this.status, this.message, this.data});

  AllInstituteTeacherModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  Null? photo;
  String? location;

  Data({this.name, this.photo, this.location});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['location'] = this.location;
    return data;
  }
}