class ShowTenOffersModel {
  int? status;
  String? message;
  List<Data>? data;

  ShowTenOffersModel({this.status, this.message, this.data});

  ShowTenOffersModel.fromJson(Map<String, dynamic> json) {
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
  String? hours;
  String? startDate;
  String? endDate;
  String? description;
  String? image;
  int? seats;

  Data(
      {this.id,
        this.name,
        this.price,
        this.hours,
        this.startDate,
        this.endDate,
        this.description,
        this.image,
        this.seats});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    hours = json['hours'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    description = json['description'];
    image = json['image'];
    seats = json['seats'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['hours'] = this.hours;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['description'] = this.description;
    data['image'] = this.image;
    data['seats'] = this.seats;
    return data;
  }
}