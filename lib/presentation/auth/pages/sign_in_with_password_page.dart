import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_images.dart';
import 'package:threads_clone/presentation/home/pages/home_page.dart';

class SignInWithPasswordPage extends StatelessWidget {
  const SignInWithPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            AppImages.instagramLogoOutline,
            width: 60,
            height: 60,
          ),
        ),
        Flexible(
          flex: MediaQuery.of(context).viewInsets.bottom != 0 ? 0 : 1,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                CupertinoTextField(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  onTapOutside: (event) {
                    return FocusScope.of(context).unfocus();
                  },
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.borderTextField,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  placeholder: "Tên người dùng, email/số di động",
                  placeholderStyle: const TextStyle(
                    color: AppColors.placeholderTextField,
                  ),
                ),
                const Gap(12),
                CupertinoTextField(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  onTapOutside: (event) {
                    return FocusScope.of(context).unfocus();
                  },
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.borderTextField,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  placeholder: "Mật khẩu",
                  obscureText: true,
                  placeholderStyle: const TextStyle(
                    color: AppColors.placeholderTextField,
                  ),
                ),
                const Gap(12),
                CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      HomePage.routeName,
                      (route) => false,
                    );
                  },
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Text(
                      "Đăng nhập",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).padding.bottom,
          ),
          child: Image.asset(
            AppImages.metaLogo,
            width: 66,
            height: 14,
          ),
        ),
      ],
    );
  }
}

void showSignInWithPassword(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: AppColors.whiteSmoke,
    builder: (context) {
      return const SignInWithPasswordPage();
    },
  );
}
