class ProfileStudentModel {
  int? status;
  String? message;
  Student? student;

  ProfileStudentModel({this.status, this.message, this.student});

  ProfileStudentModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    student =
    json['student'] != null ? new Student.fromJson(json['student']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.student != null) {
      data['student'] = this.student!.toJson();
    }
    return data;
  }
}

class Student {
  int? id;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? photo;
  int? userId;
  String ? createdAt;
  String? updatedAt;
  String? email;

  Student(
      {this.id,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.photo,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.email});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNumber = json['phone_number'];
    photo = json['photo'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone_number'] = this.phoneNumber;
    data['photo'] = this.photo;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['email'] = this.email;
    return data;
  }
}