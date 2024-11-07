import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nested_scroll_view_plus/nested_scroll_view_plus.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';
import 'package:threads_clone/presentation/thread/widgets/thread_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const double tabBarHeight = 46;
    const double toolbarHeight = 52;

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: NestedScrollViewPlus(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: AppColors.white,
                surfaceTintColor: AppColors.white,
                toolbarHeight: toolbarHeight,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        minSize: 0,
                        pressedOpacity: 1,
                        padding: EdgeInsets.zero,
                        child: SvgPicture.asset(AppIcons.icLock),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        minSize: 0,
                        pressedOpacity: 1,
                        padding: EdgeInsets.zero,
                        child: SvgPicture.asset(AppIcons.ic3lines),
                      ),
                    ],
                  ),
                ),
              ),
              CupertinoSliverRefreshControl(
                onRefresh: () {
                  return Future.delayed(const Duration(milliseconds: 0));
                },
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(18.5),
                              Text(
                                "Nguyễn Nhật Triều",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Gap(4),
                              Text(
                                "nhaattrieeu",
                                style: TextStyle(
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          ClipOval(
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://s3-alpha-sig.figma.com/img/701d/6678/fdc43f56f7ebed54faf504720638fde8?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Mpxjs2VR5NqG5QxavDqON0Vz1qwkTiRm6J5UFlmHBwRwa2XZUO8MEWn9NAE6mftshNydW16MVzEwNxgxxyWcyGgiiuhrTU3hhpSqwJr34Hf0w27utoSZ1470vSRldFJKDOzJOCRVav4HF9UkJFzF6SAeOCh5Hw4eoABAA~CCb9~DVK16tVazNRA2c2nvQcEP9a2UGOIi~bFtWi1AD2jvWhuyRB9r348ht668UgG7v0eUBffYeP5JMjT5f8NpnDj1Mi2RlSVgba3r6DlQS5XsbSgKDCRRsonnMJXcWSW0T6BO9y7Fnl5AKOrGFRyYho-t2o~8XG33U5HzpteCWYVCPg__",
                              width: 64,
                              height: 64,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const Gap(16),
                      const Text(
                        "0 người theo dõi",
                        style: TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey),
                      ),
                      const Gap(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CupertinoButton(
                              onPressed: () {},
                              minSize: 0,
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.lightGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  "Chỉnh sửa trang cá nhân",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Gap(12),
                          Expanded(
                            child: CupertinoButton(
                              onPressed: () {},
                              minSize: 0,
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.lightGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  "Chia sẻ trang cá nhân",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(12),
                    ],
                  ),
                ),
              ),
              const SliverAppBar(
                pinned: true,
                toolbarHeight: tabBarHeight,
                backgroundColor: AppColors.white,
                surfaceTintColor: AppColors.white,
                flexibleSpace: TabBar.secondary(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: WidgetStatePropertyAll(
                    AppColors.transparent,
                  ),
                  indicatorColor: AppColors.black,
                  dividerColor: AppColors.greySmoke,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
                  labelStyle: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: AppColors.unselectLabel,
                  tabs: [
                    Tab(text: "Thread"),
                    Tab(text: "Thread trả lời"),
                    Tab(text: "Bài đăng lại"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              BlocBuilder<ThreadCubit, ThreadState>(
                buildWhen: (previous, current) {
                  if (previous.threads == current.threads) {
                    return false;
                  }
                  return true;
                },
                builder: (context, state) {
                  return ListView.separated(
                    itemCount: state.threads.length,
                    itemBuilder: (context, index) {
                      return ThreadItem(thread: state.threads[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 0.5,
                        color: AppColors.lightGrey,
                      );
                    },
                  );
                },
              ),
              BlocBuilder<ThreadCubit, ThreadState>(
                buildWhen: (previous, current) {
                  if (previous.threads == current.threads) {
                    return false;
                  }
                  return true;
                },
                builder: (context, state) {
                  return ListView.separated(
                    itemCount: state.threads.length,
                    itemBuilder: (context, index) {
                      return ThreadItem(thread: state.threads[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 0.5,
                        color: AppColors.lightGrey,
                      );
                    },
                  );
                },
              ),
              BlocBuilder<ThreadCubit, ThreadState>(
                buildWhen: (previous, current) {
                  if (previous.threads == current.threads) {
                    return false;
                  }
                  return true;
                },
                builder: (context, state) {
                  return ListView.separated(
                    itemCount: state.threads.length,
                    itemBuilder: (context, index) {
                      return ThreadItem(thread: state.threads[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 0.5,
                        color: AppColors.lightGrey,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
