import 'package:flutter/material.dart';
class SearchResults extends StatelessWidget {
  List<int> results = [];

  @override
  Widget build(BuildContext context) {
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    results.add(1);
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Search"),
        ),
        body: _buildList(context));
  }

  ListView _buildList(context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, int) {
        return Card(
            child: new Column(
          children: <Widget>[
            ListTile(
              onTap: () {

              },
              leading: Icon(
                Icons.account_box,
                color: Colors.blue,
                size: 26.0,
              ),
              title: Text(
                "Nguyen Duc Hoang",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text("Software developer"),
            ),
          ],
        ));
      },
    );
  }
}
