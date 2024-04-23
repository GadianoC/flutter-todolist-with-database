import 'package:flutter/material.dart';

class ToDoListTile extends StatelessWidget {
  final Function() onPressed;
  final Function() onDelete;
  final String data;
  const ToDoListTile({
    super.key,
    required this.data,
    required this.onPressed,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 195, 238, 201),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(data),
            Column(
              children: [
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.edit,
                  ),
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(
                    Icons.delete,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
