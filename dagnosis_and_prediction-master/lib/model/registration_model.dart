// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Registration {
  String? firstName;
  String? secondName;
  String? nikeName;
  String? email;
  String? password;
  int? highbloodpressure;
  int? lowerbloodpressure;
  String? gender;
  String? birthdate;
  int? weight;
  int? height;
  int? cholesterol;
  String? medicine;
  String? diabetesinfamily;

  Registration({
    this.firstName,
    this.secondName,
    this.nikeName,
    this.email,
    this.password,
    this.highbloodpressure,
    this.lowerbloodpressure,
    this.gender,
    this.birthdate,
    this.weight,
    this.height,
    this.cholesterol,
    this.medicine,
    this.diabetesinfamily,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'firstName': firstName,
      'secondName': secondName,
      'nikeName': nikeName,
      'email': email,
      'password': password,
      'highbloodpressure': highbloodpressure,
      'lowerbloodpressure': lowerbloodpressure,
      'gender': gender,
      'birthdate': birthdate,
      'weight': weight,
      'height': height,
      'cholesterol': cholesterol,
      'medicine': medicine,
      'diabetesinfamily': diabetesinfamily,
    };
  }

  Registration.fromMap(dynamic obj) {
    firstName = obj['firstName'];
    secondName = obj['secondName'];
    nikeName = obj['nikeName'];
    email = obj['email'];
    password = obj['password'];
    highbloodpressure = obj['highbloodpressure'];
    lowerbloodpressure = obj['lowerbloodpressure'];
    gender = obj['gender'];
    birthdate = obj['birthdate'];
    weight = obj['weight'];
    height = obj['height'];
    cholesterol = obj['cholesterol'];
    medicine = obj['medicine'];
    diabetesinfamily = obj['diabetesinfamily'];
  }

  factory Registration.fromJson(String source) =>
      Registration.fromMap(json.decode(source) as Map<String, dynamic>);
}
