import 'package:flutter/cupertino.dart';

class ThreadPage extends StatelessWidget {
  const ThreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
        );
      },
    );
  }
}
