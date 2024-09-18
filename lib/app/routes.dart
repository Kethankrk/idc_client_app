import 'package:flutter/widgets.dart';
import 'package:idc_client_app/pages/home/home_page.dart';

class Routes {
  static const String home = '/home';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
    };
  }
}
