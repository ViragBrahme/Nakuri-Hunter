import 'package:cloud_firestore/cloud_firestore.dart';

class JobFinderModel {
  int expectedPackage;
  int joiningDays;
  String preferedLocation;
  List<String> primarySkills;
  List<String> secondarySkills;
  String description;
  String postedDate;
  String companyName;
  int experience;

  JobFinderModel(
    this.expectedPackage,
    this.joiningDays,
    this.preferedLocation,
    this.description,
    this.postedDate,
    this.experience,
  );

  JobFinderModel.fromMap(Map<String, dynamic> map) {
    this.expectedPackage = map['expectedPackage'];
    this.preferedLocation = map['preferedLocation'];
    this.postedDate = map['postedDate'];
    this.joiningDays = map['joiningDays'];
    this.description = map['description'];
    this.companyName = map['companyName'];
    this.primarySkills = List.from(map['primary_skills']);
    this.secondarySkills = List.from(map['secondary_skills']);
    this.experience = map['experience'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['expectedPackage'] = expectedPackage;
    map['preferedLocation'] = preferedLocation;
    map['postedDate'] = postedDate;
    map['joiningDays'] = joiningDays;
    map['description'] = description;
    map['companyName'] = companyName;
    map['experience'] = experience;
    return map;
  }

  JobFinderModel.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data);

  @override
  String toString() {
    return ("Job description -  - expectedPackage: $expectedPackage - preferedLocation : $preferedLocation - postedDate: $postedDate - joiningDays : $joiningDays : description $description");
  }
}
