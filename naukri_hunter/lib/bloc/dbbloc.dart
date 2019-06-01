import 'dart:async';

import 'repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/job_finder_model.dart';

class DbBloc {
  final _repository = Repository();

  Future<List<JobFinderModel>> getListByLocation(String location) {
    return _repository.getListByLocation(location);
  }

  Future<List<JobFinderModel>> getListBySalary(int salary) {
    return _repository.getListBySalary(salary);
  }

  Future<List<JobFinderModel>> getListByExperience(int exp) {
    return _repository.getListByExperience(exp);
  }
}

final dbBloc = DbBloc();
