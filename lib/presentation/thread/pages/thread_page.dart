import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/config/app_icons.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';
import 'package:threads_clone/presentation/thread/widgets/thread_item.dart';

class ThreadPage extends StatelessWidget {
  const ThreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ThreadCubit>().getThreads();
    return CupertinoPageScaffold(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: () async {
                return await context.read<ThreadCubit>().getThreads();
              },
            ),
            SliverToBoxAdapter(
              child: SvgPicture.asset(AppIcons.icThreads),
            ),
            BlocBuilder<ThreadCubit, ThreadState>(
              buildWhen: (previous, current) {
                if (previous.threads == current.threads) {
                  return false;
                }
                return true;
              },
              builder: (context, state) {
                return SliverList.separated(
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
    );
  }
}
