import 'package:flutter/cupertino.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/extensions/l10n_extension.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColors.white,
        leading: CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          minSize: 0,
          padding: EdgeInsets.zero,
          child: Text(context.translate.cancel),
        ),
        middle: Text(context.translate.newThread),
        trailing: CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: const Icon(
            CupertinoIcons.ellipsis_circle,
            size: 24,
          ),
        ),
      ),
      child: Container(),
    );
  }
}

void showCreateModal(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return const CreatePage();
    },
  );
}
