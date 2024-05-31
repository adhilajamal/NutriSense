
class PatientProfileModel {
  String? userName;
  int? age;
  String? gender;
  int? contact;
  String? email;
  String? profile;
  String? password;

  PatientProfileModel({this.userName, this.age, this.gender, this.contact, this.email, this.profile, this.password});

  PatientProfileModel.fromJson(Map<String, dynamic> json) {
    if(json["user_name"] is String) {
      userName = json["user_name"];
    }
    if(json["age"] is int) {
      age = json["age"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["contact"] is int) {
      contact = json["contact"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["profile"] is String) {
      profile = json["profile"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_name"] = userName;
    _data["age"] = age;
    _data["gender"] = gender;
    _data["contact"] = contact;
    _data["email"] = email;
    _data["profile"] = profile;
    _data["password"] = password;
    return _data;
  }
}