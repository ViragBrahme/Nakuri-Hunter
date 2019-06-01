import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import '../models/job_finder_model.dart';

class NaukriHunterDB {
  Firestore db = Firestore.instance;
  String _jobs = "Jobs";
  String _experience = "experience";
  String _salary = "expectedPackage";
  String _location = "preferedLocation";

  Future<List<JobFinderModel>> getJobByLocation(String location) async {
    QuerySnapshot jobQuerySnapshot = await db
        .collection(_jobs)
        .where(_location, isEqualTo: location)
        .getDocuments();

    List<JobFinderModel> jobList = List<JobFinderModel>();
    for (DocumentSnapshot jobSnapshot in jobQuerySnapshot.documents) {
      JobFinderModel meetingDetails = JobFinderModel.fromSnapshot(jobSnapshot);
      jobList.add(meetingDetails);
      print("maya, ${meetingDetails.toString()}");
    }
    return jobList;
  }

  Future<List<JobFinderModel>> getJobListByPackage(int salary) async {
    QuerySnapshot jobQuerySnapshot = await db
        .collection(_jobs)
        .where(_salary, isGreaterThanOrEqualTo: salary)
        .getDocuments();

    List<JobFinderModel> jobList = List<JobFinderModel>();
    for (DocumentSnapshot jobSnapshot in jobQuerySnapshot.documents) {
      JobFinderModel meetingDetails = JobFinderModel.fromSnapshot(jobSnapshot);
      jobList.add(meetingDetails);
      print("maya, ${meetingDetails.toString()}");
    }
    return jobList;
  }

  Future<List<JobFinderModel>> getJobListByExperience(int experience) async {
    QuerySnapshot jobQuerySnapshot = await db
        .collection(_jobs)
        .where(_experience, isEqualTo: experience)
        .getDocuments();

    List<JobFinderModel> jobList = List<JobFinderModel>();
    for (DocumentSnapshot jobSnapshot in jobQuerySnapshot.documents) {
      JobFinderModel meetingDetails = JobFinderModel.fromSnapshot(jobSnapshot);
      jobList.add(meetingDetails);
      print("maya, ${meetingDetails.toString()}");
    }
    return jobList;
  }
}
