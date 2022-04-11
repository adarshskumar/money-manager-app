import 'package:flutter/material.dart';
import 'package:money_manager/model/category/category_model.dart';

ValueNotifier<CategoryType> selectedCategoryNotifier = ValueNotifier(CategoryType.income);

Future<void> showCategoryAddPopUp(BuildContext context) async {
  showDialog(
      context: context,
      builder: (ctx) {
        return SimpleDialog(
          title: const Text('Add Category'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Category Name', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RadioButton(title: 'Income', type: CategoryType.income),
                  RadioButton(title: 'Expense', type: CategoryType.expense),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text('Add')),
            )
          ],
        );
      });
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;

  const RadioButton({Key? key, required this.title, required this.type})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: selectedCategoryNotifier,
          builder: (BuildContext ctx, CategoryType newCategory, Widget? _) {
            return Radio<CategoryType>(
              value: type,
              groupValue: newCategory,
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                selectedCategoryNotifier.value = value;
                selectedCategoryNotifier.notifyListeners();
                // print(value);
                // setState(() {
                //   _type = value;
                });
          },
        ),         
        Text(title),
      ],
    );
  }
}