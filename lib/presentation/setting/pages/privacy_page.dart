import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  static String routeName = "/privacy";

  @override
  Widget build(BuildContext context) {
    bool check = true;

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Privacy"),
        previousPageTitle: "Back",
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.icPrivacy,
                      ),
                      const Gap(12),
                      const Text(
                        "Trang cá nhân riêng tư",
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return CupertinoSwitch(
                        onChanged: (value) {
                          setState(() {
                            check = value;
                          });
                        },
                        activeColor: AppColors.black,
                        value: check,
                      );
                    },
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Gap(8),
                      SvgPicture.asset(
                        AppIcons.icThreads,
                        width: 28,
                        height: 28,
                      ),
                      const Gap(20),
                      const Text(
                        "Lượt nhắc",
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Mọi người",
                        style: TextStyle(
                          fontSize: 13.5,
                          color: AppColors.grey,
                        ),
                      ),
                      Gap(5),
                      CupertinoListTileChevron(),
                    ],
                  )
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.icMute),
                      const Gap(12),
                      const Text(
                        "Đã tắt thông báo",
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const CupertinoListTileChevron(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
