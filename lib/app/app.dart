import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/utils/app_colors.dart';

import '../routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.primary,
        appBarTheme: const AppBarTheme(
          elevation: 4,
          shadowColor: Colors.black,
          surfaceTintColor: AppColors.primary,
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      getPages: AppNavigate.routes,
      initialRoute: Routes.home,
    );
  }
}
