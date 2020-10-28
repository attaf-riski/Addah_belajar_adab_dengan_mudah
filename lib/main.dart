import 'package:flutter/material.dart';
import 'package:proyek_addah_attafwagiffar/app/locator.dart';
import 'package:proyek_addah_attafwagiffar/app/router.gr.dart' as AR;
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setuplocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Addah',
      initialRoute: AR.Routes.menuViewRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: AR.Router().onGenerateRoute,
    );
  }
}
