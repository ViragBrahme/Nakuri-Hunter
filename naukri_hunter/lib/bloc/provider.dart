import 'package:flutter/material.dart';
import 'dbbloc.dart';

class UserBlocProvider extends InheritedWidget {
  final DbBloc bloc;

  UserBlocProvider({Key key, Widget child})
      : bloc = DbBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static DbBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(UserBlocProvider)
            as UserBlocProvider)
        .bloc;
  }
}
