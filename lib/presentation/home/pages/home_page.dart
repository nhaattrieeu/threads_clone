import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/presentation/create/presentation/create_page.dart';
import 'package:threads_clone/presentation/thread/pages/thread_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 62,
        backgroundColor: AppColors.white,
        border: Border.all(style: BorderStyle.none),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icHome),
            activeIcon: SvgPicture.asset(AppIcons.icHomeActive),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icSearch),
            activeIcon: SvgPicture.asset(AppIcons.icSearchActive),
          ),
          BottomNavigationBarItem(
            icon: CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0,
              pressedOpacity: 1,
              onPressed: () {
                showCreateModal(context);
              },
              child: Center(
                child: Container(
                  width: 54,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppColors.whiteSmoke,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    AppIcons.icCreate,
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icActivity),
            activeIcon: SvgPicture.asset(AppIcons.icActivityActive),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icProfile),
            activeIcon: SvgPicture.asset(AppIcons.icProfileActive),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return const ThreadPage();
      },
    );
  }
}
