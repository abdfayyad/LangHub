class SearchTeacherModel {
  int? status;
  String? message;
  List<SearchTeacher>? searchTeacher;

  SearchTeacherModel({this.status, this.message, this.searchTeacher});

  SearchTeacherModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['search teacher'] != null) {
      searchTeacher = <SearchTeacher>[];
      json['search teacher'].forEach((v) {
        searchTeacher!.add(new SearchTeacher.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.searchTeacher != null) {
      data['search teacher'] =
          this.searchTeacher!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SearchTeacher {
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
  int? academyAdminstratorId;
  String? createdAt;
  String? updatedAt;
  dynamic? rate;

  SearchTeacher(
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
        this.academyAdminstratorId,
        this.createdAt,
        this.updatedAt,
        this.rate});

  SearchTeacher.fromJson(Map<String, dynamic> json) {
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
    academyAdminstratorId = json['academy_adminstrator_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    rate = json['rate'];
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
    data['academy_adminstrator_id'] = this.academyAdminstratorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['rate'] = this.rate;
    return data;
  }
}