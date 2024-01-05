import 'package:consume_api_app/screen/first_screen.dart';
import 'package:consume_api_app/screen/second_screen.dart';
import 'package:consume_api_app/screen/third_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String secondRoute = '/second';
  static const String thirdRoute = '/third';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      initialRoute: (context) => FirstScreen(),
      secondRoute: (context) => SecondScreen(),
      thirdRoute: (context) => ThirdScreen(),
    };
  }
}
