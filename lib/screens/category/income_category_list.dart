import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("Income Category $index"),
            trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {},),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10,);
        
      },
      itemCount: 10,
      
    );
  }
}