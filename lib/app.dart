import 'package:flutter/material.dart';
import 'package:layout/src/routes/app_routes.dart';
import 'package:layout/src/themes/theme.dart';

class AppConsultaVeiculos extends StatelessWidget {
  const AppConsultaVeiculos({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: myTheme,
      routes: AppRoutes().routes,
    );
  }
}
