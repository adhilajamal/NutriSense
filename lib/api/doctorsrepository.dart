import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';

class DoctorRepository{
  Future<DoctorListModel>getdoctorslist() async{
 
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/get_all_doctors'), headers: {'Content-Type' : 'application/json'});
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return DoctorListModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
}

