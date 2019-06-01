import 'package:flutter/material.dart';

import 'search_results.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController skillsTextEditCont = new TextEditingController();
  TextEditingController technologiesTextEditCont = new TextEditingController();
  TextEditingController joiningWithinTextEditCont = new TextEditingController();
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
                  TextField(
                    controller: joiningWithinTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Notice Period in Days',
                        contentPadding: EdgeInsets.all(20.0)),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: false, signed: false),
                  ),
                  TextField(
                    controller: prefferedLocTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Preffered Location',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                  TextField(
                    controller: expectedCTCTextEditCont,
                    decoration: InputDecoration(
                        labelText: 'Expected CTC per Annum',
                        contentPadding: EdgeInsets.all(20.0)),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: false, signed: false),
                  ),
                  Container(
                    height: 30,
                  ),
                  Center(
                      child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResult()));
                      }
                    },
                    child: Text('Search'),
                  ))
                ],
              ),
            ),
          );
        }));
  }
}
