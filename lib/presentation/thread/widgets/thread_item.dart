import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/core/utils/time_converter.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';
import 'package:threads_clone/presentation/thread/widgets/media_item.dart';

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
                width: 36,
                height: 36,
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
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Visibility(
                          visible: thread.author.isVerified,
                          child: Row(
                            children: [
                              const Gap(6),
                              SvgPicture.asset(
                                AppIcons.icVerify,
                                width: 12,
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                        const Gap(6),
                        Text(
                          timeConverter(context, thread.createdAt),
                          style: const TextStyle(
                            fontSize: 15,
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
                const Gap(6),
                Text(
                  thread.content,
                  style: const TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                MediaItem(media: thread.media),
                const Gap(12),
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
                          AnimatedSize(
                            duration: const Duration(milliseconds: 200),
                            child: Visibility(
                              visible: thread.like == 0 ? false : true,
                              child: Row(
                                children: [
                                  const Gap(4),
                                  AnimatedFlipCounter(
                                    value: thread.like,
                                    textStyle: TextStyle(
                                      fontSize: 13.5,
                                      fontWeight: FontWeight.w400,
                                      color: thread.isLiked
                                          ? AppColors.active
                                          : AppColors.darkGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icComment),
                        AnimatedSize(
                          duration: const Duration(milliseconds: 200),
                          child: Visibility(
                            visible: thread.comment == 0 ? false : true,
                            child: Row(
                              children: [
                                const Gap(4),
                                AnimatedFlipCounter(
                                  value: thread.comment,
                                  textStyle: const TextStyle(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icRepost),
                        AnimatedSize(
                          duration: const Duration(milliseconds: 200),
                          child: Visibility(
                            visible: thread.repost == 0 ? false : true,
                            child: Row(
                              children: [
                                const Gap(4),
                                AnimatedFlipCounter(
                                  value: thread.repost,
                                  textStyle: const TextStyle(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.icShare),
                        AnimatedSize(
                          duration: const Duration(milliseconds: 200),
                          child: Visibility(
                            visible: thread.share == 0 ? false : true,
                            child: Row(
                              children: [
                                const Gap(4),
                                AnimatedFlipCounter(
                                  value: thread.share,
                                  textStyle: const TextStyle(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
