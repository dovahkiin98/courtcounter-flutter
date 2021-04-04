import 'package:courtcounter/res/strings.dart';

import 'theme/theme.dart';
import 'package:flutter/material.dart';

import 'ui/main/main_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringRes.app_name,
      theme: theme,
      darkTheme: darkTheme,
      home: MainUI(),
    );
  }
}
