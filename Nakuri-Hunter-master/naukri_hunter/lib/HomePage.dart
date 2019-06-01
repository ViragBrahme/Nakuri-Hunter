import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController myNameTextEditCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            TextField(
              controller: myNameTextEditCont,
              decoration: InputDecoration(
                  labelText: 'Skills', contentPadding: EdgeInsets.all(20.0)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Technologies',
                  contentPadding: EdgeInsets.all(20.0)),
            ),
            Padding(padding: const EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                print("Hello");
                //Navigator.push(context, MaterialPageRoute(builder: (context) => First(myNameTextEditCont.text)));
              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
