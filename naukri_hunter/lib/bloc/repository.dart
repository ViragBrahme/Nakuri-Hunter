import '../db/naukri_hunter_db.dart';
import '../models/job_finder_model.dart';

class Repository {
  final dbProvider = NaukriHunterDB();

  Future<List<JobFinderModel>> getListByLocation(String location) =>
      dbProvider.getJobByLocation(location);

  Future<List<JobFinderModel>> getListBySalary(int salary ) =>
      dbProvider.getJobListByPackage(salary);

  Future<List<JobFinderModel>> getListByExperience(int exp) =>
      dbProvider.getJobListByExperience(exp);
}
