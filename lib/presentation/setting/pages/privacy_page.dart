import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.icUsers),
                      const Gap(12),
                      const Text(
                        "Trang cá nhân bạn theo dõi",
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
            Container(
              width: double.infinity,
              height: 0.3,
              color: AppColors.grey,
            ),
            CupertinoButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Cài đặt quyền riêng tư khác",
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(AppIcons.icOpenIn),
                    ],
                  ),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      text:
                          "Một số cài đặt (chẳn hạn như hạn chế) sẽ áp dụng cho Threads lẫn Instagram và có thể quản lý trên Instagram. ",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "Tìm hiểu thêm",
                          style: const TextStyle(
                            color: AppColors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //impl tap handle
                            },
                        ),
                      ],
                    ),
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
                      SvgPicture.asset(AppIcons.icHideLikes),
                      const Gap(12),
                      const Text(
                        "Ẩn số lượt thích và lượt chia sẻ",
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.icOpenIn),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
