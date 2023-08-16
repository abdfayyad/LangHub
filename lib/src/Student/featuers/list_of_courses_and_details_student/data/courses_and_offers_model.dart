class ShowCoursesAndOffersModel {
  int? status;
  String? message;
  List<Data>? data;

  ShowCoursesAndOffersModel({this.status, this.message, this.data});

  ShowCoursesAndOffersModel.fromJson(Map<String, dynamic> json) {
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
  int? price;
  int? hours;
  String? courseImage;
  int? seats;
  String? description;
  String? startTime;
  String? endTime;
  bool? isOffer;
  Teacher? teacher;
  Academy? academy;
  List<AnnualSchedules>? annualSchedules;

  Data(
      {this.id,
        this.name,
        this.price,
        this.hours,
        this.courseImage,
        this.seats,
        this.description,
        this.startTime,
        this.endTime,
        this.isOffer,
        this.teacher,
        this.academy,
        this.annualSchedules});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    hours = json['hours'];
    courseImage = json['course_image'];
    seats = json['seats'];
    description = json['description'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    isOffer = json['is_offer'];
    teacher =
    json['teacher'] != null ? new Teacher.fromJson(json['teacher']) : null;
    academy =
    json['academy'] != null ? new Academy.fromJson(json['academy']) : null;
    if (json['annual_schedules'] != null) {
      annualSchedules = <AnnualSchedules>[];
      json['annual_schedules'].forEach((v) {
        annualSchedules!.add(new AnnualSchedules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['hours'] = this.hours;
    data['course_image'] = this.courseImage;
    data['seats'] = this.seats;
    data['description'] = this.description;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['is_offer'] = this.isOffer;
    if (this.teacher != null) {
      data['teacher'] = this.teacher!.toJson();
    }
    if (this.academy != null) {
      data['academy'] = this.academy!.toJson();
    }
    if (this.annualSchedules != null) {
      data['annual_schedules'] =
          this.annualSchedules!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teacher {
  int? id;
  String? firstName;
  String? lastName;

  Teacher({this.id, this.firstName, this.lastName});

  Teacher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    return data;
  }
}

class Academy {
  int? id;
  String? name;

  Academy({this.id, this.name});

  Academy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class AnnualSchedules {
  String? startHour;
  String? endHour;
  String? day;

  AnnualSchedules({this.startHour, this.endHour, this.day});

  AnnualSchedules.fromJson(Map<String, dynamic> json) {
    startHour = json['start_hour'];
    endHour = json['end_hour'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_hour'] = this.startHour;
    data['end_hour'] = this.endHour;
    data['day'] = this.day;
    return data;
  }
}