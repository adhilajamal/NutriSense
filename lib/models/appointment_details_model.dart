// To parse this JSON data, do
//
//     final appointmentDetailsModel = appointmentDetailsModelFromJson(jsonString);

import 'dart:convert';

List<AppointmentDetailsModel> appointmentDetailsModelFromJson(String str) => List<AppointmentDetailsModel>.from(json.decode(str).map((x) => AppointmentDetailsModel.fromJson(x)));

String appointmentDetailsModelToJson(List<AppointmentDetailsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AppointmentDetailsModel {
    String drName;
    String patientName;
    DateTime date;
    String time;
    String place;
    int contactNo;
    String district;
    String staus;

    AppointmentDetailsModel({
        required this.drName,
        required this.patientName,
        required this.date,
        required this.time,
        required this.place,
        required this.contactNo,
        required this.district,
        required this.staus,
    });

    factory AppointmentDetailsModel.fromJson(Map<String, dynamic> json) => AppointmentDetailsModel(
        drName: json["dr_name"],
        patientName: json["patient_name"],
        date: DateTime.parse(json["date"]),
        time: json["time"],
        place: json["place"],
        contactNo: json["contact_no"],
        district: json["district"],
        staus: json["staus"],
    );

    Map<String, dynamic> toJson() => {
        "dr_name": drName,
        "patient_name": patientName,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "time": time,
        "place": place,
        "contact_no": contactNo,
        "district": district,
        "staus": staus,
    };
}
