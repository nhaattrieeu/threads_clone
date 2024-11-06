import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';

class ProfilePageCopy extends StatefulWidget {
  const ProfilePageCopy({super.key});

  @override
  State<ProfilePageCopy> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePageCopy>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverRefreshControl(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  const Gap(12),
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
                    ),
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
                            padding: const EdgeInsets.symmetric(vertical: 8),
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
                            padding: const EdgeInsets.symmetric(vertical: 8),
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
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Material(
              child: DefaultTabController(
                length: 2,
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          color: AppColors.lightGrey,
                          child: Text(index.toString()),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          color: AppColors.lightGrey,
                          child: Text(index.toString()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
