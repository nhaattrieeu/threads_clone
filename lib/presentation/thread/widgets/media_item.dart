import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/core/config/app_colors.dart';

class MediaItem extends StatelessWidget {
  const MediaItem({super.key, required this.media});

  final List<String> media;

  @override
  Widget build(BuildContext context) {
    if (media.isEmpty) {
      return const Gap(0);
    } else {
      return Column(
        children: [
          const Gap(12),
          GestureDetector(
            onTap: () {
              showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoPageScaffold(
                    backgroundColor: AppColors.black,
                    child: Center(
                      child: CachedNetworkImage(
                        imageUrl: media[0],
                      ),
                    ),
                  );
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: media[0],
              ),
            ),
          ),
        ],
      );
    }
  }
}
