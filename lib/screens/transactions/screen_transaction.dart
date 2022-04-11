import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(radius:50, child: Text('11 \n Apr', textAlign: TextAlign.center,)),
              title: Text('10000'),
              subtitle: Text('Travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
