import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_storage/lite_storage.dart';

import 'mediator/mediator.dart';
import 'profile/profile_controller.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiteStorage.init();
  _loadInitialTheme();
  runApp(_ScheduleApp());
}

void _loadInitialTheme() {
  final savedTheme = LiteStorage.read('theme_mode');
  if (savedTheme != null) {
    switch (savedTheme) {
      case 'light':
        ProfileController.themeMode.value = ThemeMode.light;
        break;
      case 'dark':
        ProfileController.themeMode.value = ThemeMode.dark;
        break;
      default:
        ProfileController.themeMode.value = ThemeMode.system;
    }
  }
}

class _ScheduleApp extends StatelessWidget {
  final Mediator mediator = Mediator();

  @override
  Widget build(BuildContext context) {
    Mediator.instance = mediator;
    return GetMaterialApp(
      title: Mediator.title,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.futuristicTheme,
      darkTheme: AppTheme.futuristicTheme,
      themeMode: ThemeMode.dark,
      initialRoute: Mediator.initialRoute,
      getPages: Mediator.getPages,
    );
  }

}