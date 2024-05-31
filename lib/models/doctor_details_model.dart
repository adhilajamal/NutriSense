
class DoctorDetailsModel {
  String? userName;
  int? age;
  String? gender;
  int? contact;
  String? email;
  bool? doctorverify;
  String? about;
  String? address;
  String? district;
  String? workingtime;
  String? qualification;
  String? profile;
  String? proof;

  DoctorDetailsModel({this.userName, this.age, this.gender, this.contact, this.email, this.doctorverify, this.about, this.address, this.district, this.workingtime, this.qualification, this.profile, this.proof});

  DoctorDetailsModel.fromJson(Map<String, dynamic> json) {
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
    if(json["doctorverify"] is bool) {
      doctorverify = json["doctorverify"];
    }
    if(json["about"] is String) {
      about = json["about"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["district"] is String) {
      district = json["district"];
    }
    if(json["workingtime"] is String) {
      workingtime = json["workingtime"];
    }
    if(json["qualification"] is String) {
      qualification = json["qualification"];
    }
    if(json["profile"] is String) {
      profile = json["profile"];
    }
    if(json["proof"] is String) {
      proof = json["proof"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_name"] = userName;
    _data["age"] = age;
    _data["gender"] = gender;
    _data["contact"] = contact;
    _data["email"] = email;
    _data["doctorverify"] = doctorverify;
    _data["about"] = about;
    _data["address"] = address;
    _data["district"] = district;
    _data["workingtime"] = workingtime;
    _data["qualification"] = qualification;
    _data["profile"] = profile;
    _data["proof"] = proof;
    return _data;
  }
}