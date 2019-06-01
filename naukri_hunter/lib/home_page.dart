import 'package:flutter/material.dart';

import 'search_results.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController skillsTextEditCont = new TextEditingController();
  TextEditingController technologyTextEditCont = new TextEditingController();
  TextEditingController noticePeriodTextEditCont = new TextEditingController();
  TextEditingController prefferedLocTextEditCont = new TextEditingController();
  TextEditingController expectedCTCTextEditCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naukri Hunter"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            TextField(
              controller: skillsTextEditCont,
              decoration: InputDecoration(
                  labelText: 'Skills', contentPadding: EdgeInsets.all(20.0)),
            ),
            TextField(
              controller: technologyTextEditCont,
              decoration: InputDecoration(
                  labelText: 'Technologies',
                  contentPadding: EdgeInsets.all(20.0)),
            ),
            TextField(
              controller: noticePeriodTextEditCont,
              decoration: InputDecoration(
                  labelText: 'Notice Period',
                  contentPadding: EdgeInsets.all(20.0)),
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
                  labelText: 'Expected CTC',
                  contentPadding: EdgeInsets.all(20.0)),
            ),
            Padding(padding: const EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchResult()));
              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
