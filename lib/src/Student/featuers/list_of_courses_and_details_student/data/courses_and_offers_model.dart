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
  dynamic? hours;
  String? courseImage;
  int? seats;
  String? description;
  int? hasExam;
  String? language;
  String? startDate;
  String? endDate;
  bool? isOffer;
  Teacher? teacher;
  int? hasActivatExam;
  int? hasNotification;
  Academy? academy;
  List<AnnualSchedule>? annualSchedule;

  Data(
      {this.id,
        this.name,
        this.price,
        this.hours,
        this.courseImage,
        this.seats,
        this.description,
        this.hasExam,
        this.language,
        this.startDate,
        this.endDate,
        this.isOffer,
        this.teacher,
        this.hasActivatExam,
        this.hasNotification,
        this.academy,
        this.annualSchedule});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    hours = json['hours'];
    courseImage = json['course_image'];
    seats = json['seats'];
    description = json['description'];
    hasExam = json['hasExam'];
    language = json['language'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    isOffer = json['is_offer'];
    teacher =
    json['teacher'] != null ? new Teacher.fromJson(json['teacher']) : null;
    hasActivatExam = json['hasActivatExam'];
    hasNotification = json['hasNotification'];
    academy =
    json['academy'] != null ? new Academy.fromJson(json['academy']) : null;
    if (json['annual_schedule'] != null) {
      annualSchedule = <AnnualSchedule>[];
      json['annual_schedule'].forEach((v) {
        annualSchedule!.add(new AnnualSchedule.fromJson(v));
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
    data['hasExam'] = this.hasExam;
    data['language'] = this.language;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['is_offer'] = this.isOffer;
    if (this.teacher != null) {
      data['teacher'] = this.teacher!.toJson();
    }
    data['hasActivatExam'] = this.hasActivatExam;
    data['hasNotification'] = this.hasNotification;
    if (this.academy != null) {
      data['academy'] = this.academy!.toJson();
    }
    if (this.annualSchedule != null) {
      data['annual_schedule'] =
          this.annualSchedule!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teacher {
  int? id;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? photo;
  int? userId;
  String? createdAt;
  String? updatedAt;
  String? email;

  Teacher(
      {this.id,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.photo,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.email});

  Teacher.fromJson(Map<String, dynamic> json) {
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

class AnnualSchedule {
  int? id;
  int? saturday;
  String? startSaturday;
  String? endSaturday;
  int? sunday;
  String? startSunday;
  String? endSunday;
  int? monday;
  String? startMonday;
  String? endMonday;
  int? tuesday;
  String? startTuesday;
  String? endTuesday;
  int? wednsday;
  String? startWednsday;
  String? endWednsday;
  int? thursday;
  String? startThursday;
  String? endThursday;
  int? friday;
  String? startFriday;
  String? endFriday;
  int? courseId;
  String? createdAt;
  String? updatedAt;

  AnnualSchedule(
      {this.id,
        this.saturday,
        this.startSaturday,
        this.endSaturday,
        this.sunday,
        this.startSunday,
        this.endSunday,
        this.monday,
        this.startMonday,
        this.endMonday,
        this.tuesday,
        this.startTuesday,
        this.endTuesday,
        this.wednsday,
        this.startWednsday,
        this.endWednsday,
        this.thursday,
        this.startThursday,
        this.endThursday,
        this.friday,
        this.startFriday,
        this.endFriday,
        this.courseId,
        this.createdAt,
        this.updatedAt});

  AnnualSchedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    saturday = json['saturday'];
    startSaturday = json['start_saturday'];
    endSaturday = json['end_saturday'];
    sunday = json['sunday'];
    startSunday = json['start_sunday'];
    endSunday = json['end_sunday'];
    monday = json['monday'];
    startMonday = json['start_monday'];
    endMonday = json['end_monday'];
    tuesday = json['tuesday'];
    startTuesday = json['start_tuesday'];
    endTuesday = json['end_tuesday'];
    wednsday = json['wednsday'];
    startWednsday = json['start_wednsday'];
    endWednsday = json['end_wednsday'];
    thursday = json['thursday'];
    startThursday = json['start_thursday'];
    endThursday = json['end_thursday'];
    friday = json['friday'];
    startFriday = json['start_friday'];
    endFriday = json['end_friday'];
    courseId = json['course_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['saturday'] = this.saturday;
    data['start_saturday'] = this.startSaturday;
    data['end_saturday'] = this.endSaturday;
    data['sunday'] = this.sunday;
    data['start_sunday'] = this.startSunday;
    data['end_sunday'] = this.endSunday;
    data['monday'] = this.monday;
    data['start_monday'] = this.startMonday;
    data['end_monday'] = this.endMonday;
    data['tuesday'] = this.tuesday;
    data['start_tuesday'] = this.startTuesday;
    data['end_tuesday'] = this.endTuesday;
    data['wednsday'] = this.wednsday;
    data['start_wednsday'] = this.startWednsday;
    data['end_wednsday'] = this.endWednsday;
    data['thursday'] = this.thursday;
    data['start_thursday'] = this.startThursday;
    data['end_thursday'] = this.endThursday;
    data['friday'] = this.friday;
    data['start_friday'] = this.startFriday;
    data['end_friday'] = this.endFriday;
    data['course_id'] = this.courseId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}