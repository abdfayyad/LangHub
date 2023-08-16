class ShowCertificateModel {
  int? statuse;
  String? message;
  List<Data>? data;

  ShowCertificateModel({this.statuse, this.message, this.data});

  ShowCertificateModel.fromJson(Map<String, dynamic> json) {
    statuse = json['statuse'];
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
    data['statuse'] = this.statuse;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? courseLevel;
  String? image;
  int? mark;
  String? receiveDate;
  String? studentName;
  String? academyName;

  Data(
      {this.id,
        this.courseLevel,
        this.image,
        this.mark,
        this.receiveDate,
        this.studentName,
        this.academyName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseLevel = json['course_level'];
    image = json['image'];
    mark = json['mark'];
    receiveDate = json['receive_date'];
    studentName = json['student_name'];
    academyName = json['academy_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_level'] = this.courseLevel;
    data['image'] = this.image;
    data['mark'] = this.mark;
    data['receive_date'] = this.receiveDate;
    data['student_name'] = this.studentName;
    data['academy_name'] = this.academyName;
    return data;
  }
}