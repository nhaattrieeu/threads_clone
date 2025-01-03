import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_images.dart';
import 'package:threads_clone/presentation/auth/cubit/auth_cubit.dart';
import 'package:threads_clone/presentation/auth/pages/sign_in_with_password_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static String routeName = "/signIn";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.whiteSmoke,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.threadsLogo,
                width: 68,
                height: 68,
              ),
              const Gap(48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return CupertinoButton(
                      onPressed: () {
                        context.read<AuthCubit>().signIn();
                      },
                      minSize: 0,
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppImages.instagramLogo,
                                  width: 44,
                                  height: 44,
                                ),
                                const Gap(20),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tiếp tục bằng Instagram",
                                      style: TextStyle(
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "nhaattrieeu",
                                      style: TextStyle(
                                        fontSize: 14.5,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const CupertinoListTileChevron(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          Positioned(
            bottom: 16,
            child: CupertinoButton(
              onPressed: () {
                showSignInWithPassword(context);
              },
              child: const Text(
                "Dùng tài khoản khác",
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
