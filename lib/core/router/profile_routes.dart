import 'package:flutter/cupertino.dart';
import 'package:threads_clone/presentation/profile/pages/profile_page.dart';
import 'package:threads_clone/presentation/setting/pages/privacy_page.dart';
import 'package:threads_clone/presentation/setting/pages/setting_page.dart';

final Map<String, WidgetBuilder> profileRoutes = {
  ProfilePage.routeName: (context) => const ProfilePage(),
  SettingPage.routeName: (context) => const SettingPage(),
  PrivacyPage.routeName: (context) => const PrivacyPage(),
};
