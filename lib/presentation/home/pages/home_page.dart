import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/presentation/thread/pages/thread_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icHome),
            activeIcon: SvgPicture.asset(AppIcons.icHomeDark),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icSearch),
            activeIcon: SvgPicture.asset(AppIcons.icSearchDark),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: CupertinoColors.white,
                    );
                  },
                );
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.transparent,
                child: SvgPicture.asset(AppIcons.icCreate),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icActivity),
            activeIcon: SvgPicture.asset(AppIcons.icActivityDark),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icProfile),
            activeIcon: SvgPicture.asset(AppIcons.icProfileDark),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return const ThreadPage();
      },
    );
  }
}
