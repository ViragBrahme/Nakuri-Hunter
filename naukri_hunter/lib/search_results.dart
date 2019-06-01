import 'package:flutter/material.dart';

import 'models/job_finder_model.dart';
import 'db/naukri_hunter_db.dart';
import 'bloc/dbbloc.dart';

class SearchResult extends StatelessWidget {
  final List<int> _listData = List<int>.generate(100, (i) => i);

  String location;
  int salary;
  int experience;

  Future<List<JobFinderModel>> listByLocation;
  List<JobFinderModel> listBySalary;
  List<JobFinderModel> listByExperience;

  SearchResult(this.location, this.salary, this.experience) {
    listByLocation = dbBloc.getListByLocation(location);
    // listBySalary = dbBloc.getListBySalary(salary) as List<JobFinderModel>;
    // listByExperience = dbBloc.getListByExperience(experience) as List<JobFinderModel>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results"),
      ),
      body: Column(
        children: <Widget>[
          TopButtonsView(),
          FutureBuilder(
              future: listByLocation,
              builder: (BuildContext context,
                  AsyncSnapshot<List<JobFinderModel>> snapshot) {
                if (!snapshot.hasData)
                  return new Center(child: CircularProgressIndicator());
                List<JobFinderModel> content = snapshot.data;
                return SizedBox(
                    child: new ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: new EdgeInsets.all(6.0),
                      itemCount: content.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Card(
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  onTap: () {},
                                  leading: Icon(
                                    Icons.adb,
                                    color: Colors.blue,
                                    size: 26.0,
                                  ),
                                  title: Text(
                                    content[index].companyName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  subtitle:
                                      Text(content[index].preferedLocation),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    height: 450);
              })
        ],
      ),
    );
  }
}

class TopButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Text("Experience"),
            onPressed: () {},
          )),
          Expanded(
              child: FlatButton(
            child: Text("Salary"),
            onPressed: () {},
          )),
          Expanded(
              child: FlatButton(
            child: Text("Location"),
            onPressed: () {},
          ))
        ],
      ),
    );
  }
}
