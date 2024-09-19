import 'package:flutter/material.dart';
import 'package:idc_client_app/app/routes.dart';
import 'package:idc_client_app/pages/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.home,
      // routes: Routes.getRoutes(),

      //
      home: LoginPage(),
    );
  }
}
