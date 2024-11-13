import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/presentation/auth/pages/sign_in_page.dart';
import 'package:threads_clone/presentation/setting/pages/privacy_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static String routeName = "/setting";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Setting"),
        previousPageTitle: "Back",
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icInviteFriend,
                  ),
                  const Gap(12),
                  const Text(
                    "Theo dõi và mời bạn bè",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icNotification,
                  ),
                  const Gap(12),
                  const Text(
                    "Thông báo",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icYourLike,
                  ),
                  const Gap(12),
                  const Text(
                    "Lượt thích của bạn",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PrivacyPage.routeName);
              },
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icPrivacy,
                  ),
                  const Gap(12),
                  const Text(
                    "Quyền riêng tư",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icAccount,
                  ),
                  const Gap(12),
                  const Text(
                    "Tài khoản",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icHelp,
                  ),
                  const Gap(12),
                  const Text(
                    "Trợ giúp",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icAbout,
                  ),
                  const Gap(12),
                  const Text(
                    "Giới thiệu",
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.3,
              color: AppColors.grey,
            ),
            CupertinoButton(
              onPressed: () {},
              child: const Text(
                "Chuyển trang cá nhân",
                style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue,
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {
                handleSignOut(context);
              },
              child: const Text(
                "Đăng xuất",
                style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.active,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void handleSignOut(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text("Sign out"),
        content: const Text("Đăng xuất khỏi tài khoản của bạn?"),
        actions: [
          CupertinoDialogAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamedAndRemoveUntil(
                SignInPage.routeName,
                (route) => false,
              );
            },
            child: const Text("Sign out"),
          ),
        ],
      );
    },
  );
}
