import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/core/extensions/l10n_extension.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';

class ThreadItem extends StatelessWidget {
  const ThreadItem({super.key, required this.thread});

  final Thread thread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(0.5),
            decoration: const BoxDecoration(
              color: AppColors.grey,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl: thread.author.profilePictureUrl,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          thread.author.username,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Visibility(
                          visible: thread.author.isVerified,
                          child: Row(
                            children: [
                              const Gap(8),
                              SvgPicture.asset(
                                AppIcons.icVerify,
                                width: 12,
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                        const Gap(8),
                        Text(
                          "5${context.translate.hour}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      onPressed: () {},
                      child: SizedBox(
                        width: 15,
                        height: 15,
                        child: SvgPicture.asset(AppIcons.ic3dots),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Text(
                  thread.content,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      pressedOpacity: 1,
                      onPressed: () {
                        context.read<ThreadCubit>().handleLike(thread.id);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            thread.isLiked
                                ? AppIcons.icLikeActive
                                : AppIcons.icLike,
                          ),
                          const Gap(4),
                          AnimatedFlipCounter(
                            value: thread.like,
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: thread.isLiked
                                  ? AppColors.active
                                  : AppColors.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(18),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icComment),
                        const Gap(4),
                        Text(
                          thread.comment.toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                    const Gap(18),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icRepost),
                        const Gap(4),
                        Text(
                          thread.repost.toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                    const Gap(18),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icShare),
                        const Gap(4),
                        Text(
                          thread.share.toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                    const Gap(18),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
