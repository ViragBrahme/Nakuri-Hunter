import 'package:flutter/material.dart';
import 'package:naukri_hunter/home_page.dart';
import 'bloc/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return UserBlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Naukri Hunter',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage(),
      ),
    );
  }
}
