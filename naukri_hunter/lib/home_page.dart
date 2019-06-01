import 'package:flutter/material.dart';
import 'package:naukri_hunter/bloc/dbbloc.dart';

import 'search_results.dart';
import 'db/naukri_hunter_db.dart';
import 'bloc/dbbloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController skillsTextEditCont = new TextEditingController();
  TextEditingController technologiesTextEditCont = new TextEditingController();
  TextEditingController experienceTextEditCont = new TextEditingController();
  TextEditingController prefferedLocTextEditCont = new TextEditingController();
  TextEditingController expectedCTCTextEditCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Naukri Hunter'),
        ),
        body: Builder(builder: (BuildContext context) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your Skills e.g: Dart, flutter, C, C++';
                      }
                    },
                    controller: skillsTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Skills',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                  TextField(
                    controller: technologiesTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Technologies',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your Experience';
                      }
                    },
                    controller: experienceTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Experience in years',
                        contentPadding: EdgeInsets.all(20.0)),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: false, signed: false),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your Preffered Location';
                      }
                    },
                    controller: prefferedLocTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Preffered Location',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                  TextField(
                    controller: expectedCTCTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Expected CTC per Annum in lacs',
                        contentPadding: EdgeInsets.all(20.0)),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: false, signed: false),
                  ),
                  Container(
                    height: 30,
                  ),
                  Center(
                      child: RaisedButton(
                        padding: EdgeInsets.only(left:40,top:10,right:40,bottom:10),
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResult(
                                    prefferedLocTextEditCont.text,
                                    int.parse(expectedCTCTextEditCont.text),
                                    int.parse(experienceTextEditCont.text))));
                      }
                    },
                    child: Text('SEARCH'),
                  ))
                ],
              ),
            ),
          );
        }));
  }
}
