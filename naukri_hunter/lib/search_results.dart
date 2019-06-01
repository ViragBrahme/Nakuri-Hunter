import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final List<int> _listData = List<int>.generate(100, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results"),
      ),
      body: Column(
        children: <Widget>[TopButtonsView(), HeaderRowListView()],
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
            child: Text("Job Posted"),
            onPressed: () {},
          ))
        ],
      ),
    );
  }
}

class HeaderRowListView extends StatelessWidget {
  final List<int> _listData = List<int>.generate(10, (i) => i);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: _listData.map((i) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.blue,
                    size: 26.0,
                  ),
                  title: Text(
                    "Globant Pune",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text("Flutter"),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
