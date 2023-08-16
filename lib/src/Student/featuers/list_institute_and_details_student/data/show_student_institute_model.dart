class ShowStudentInstituteModel {
  int? status;
  String? message;
  List<Data>? data;

  ShowStudentInstituteModel({this.status, this.message, this.data});

  ShowStudentInstituteModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? name;
  String? description;
  String? location;
  String? licenseNumber;
  int? english;
  int? germany;
  int? spanish;
  int? french;
  String? image;
  int? deleteTime;
  int? adminstratorId;
  String? createdAt;
  String? updatedAt;
  dynamic? rate;
  Pivot? pivot;

  Data(
      {this.id,
        this.name,
        this.description,
        this.location,
        this.licenseNumber,
        this.english,
        this.germany,
        this.spanish,
        this.french,
        this.image,
        this.deleteTime,
        this.adminstratorId,
        this.createdAt,
        this.updatedAt,
        this.rate,
        this.pivot});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    location = json['location'];
    licenseNumber = json['license_number'];
    english = json['english'];
    germany = json['germany'];
    spanish = json['spanish'];
    french = json['french'];
    image = json['image'];
    deleteTime = json['delete_time'];
    adminstratorId = json['adminstrator_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    rate = json['rate'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['location'] = this.location;
    data['license_number'] = this.licenseNumber;
    data['english'] = this.english;
    data['germany'] = this.germany;
    data['spanish'] = this.spanish;
    data['french'] = this.french;
    data['image'] = this.image;
    data['delete_time'] = this.deleteTime;
    data['adminstrator_id'] = this.adminstratorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['rate'] = this.rate;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? studentId;
  int? academyId;

  Pivot({this.studentId, this.academyId});

  Pivot.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    academyId = json['academy_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['student_id'] = this.studentId;
    data['academy_id'] = this.academyId;
    return data;
  }
}