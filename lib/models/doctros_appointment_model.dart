
class DoctrosAppointmentModel {
  String? drName;
  String? patientEmail;
  String? patientName;
  String? date;
  String? time;
  String? place;
  int? contactNo;

  DoctrosAppointmentModel({this.drName, this.patientEmail, this.patientName, this.date, this.time, this.place, this.contactNo});

  DoctrosAppointmentModel.fromJson(Map<String, dynamic> json) {
    if(json["dr_name"] is String) {
      drName = json["dr_name"];
    }
    if(json["patient_email"] is String) {
      patientEmail = json["patient_email"];
    }
    if(json["patient_name"] is String) {
      patientName = json["patient_name"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["time"] is String) {
      time = json["time"];
    }
    if(json["place"] is String) {
      place = json["place"];
    }
    if(json["contact_no"] is int) {
      contactNo = json["contact_no"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["dr_name"] = drName;
    _data["patient_email"] = patientEmail;
    _data["patient_name"] = patientName;
    _data["date"] = date;
    _data["time"] = time;
    _data["place"] = place;
    _data["contact_no"] = contactNo;
    return _data;
  }
}