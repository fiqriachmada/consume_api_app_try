import 'package:consume_api_app/screen/first_screen.dart';
import 'package:consume_api_app/screen/second_screen.dart';
import 'package:consume_api_app/screen/third_screen.dart';
import 'package:flutter/cupertino.dart';

// class AppRoutes {
//   static const String initialRoute = '/';
//   static const String secondRoute = '/second';
//   static const String thirdRoute = '/third';

//   static Map<String, WidgetBuilder> getRoutes() {
//     return {
//       initialRoute: (context) => FirstScreen(),
//       secondRoute: (context) => SecondScreen(),
//       thirdRoute: (context) => ThirdScreen(),
//     };
//   }
// }

// import 'package:consume_api_app/screen/first_screen.dart';
// import 'package:consume_api_app/screen/second_screen.dart';
// import 'package:consume_api_app/screen/third_screen.dart';
// import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String secondRoute = '/second';
  static const String thirdRoute = '/third';

  // Menambahkan variabel untuk menyimpan path rute saat ini
  static String currentRoute = initialRoute;

  static Map<String, WidgetBuilder> getRoutes() {
    print('Current Route: ${AppRoutes.currentRoute}');
    return {
      initialRoute: (context) {
        // Menyimpan path rute saat ini
        currentRoute = initialRoute;
        return FirstScreen();
      },
      secondRoute: (context) {
        // Menyimpan path rute saat ini
        currentRoute = secondRoute;
        return SecondScreen();
      },
      thirdRoute: (context) {
        // Menyimpan path rute saat ini
        currentRoute = thirdRoute;
        return ThirdScreen();
      },
    };
  }
}
