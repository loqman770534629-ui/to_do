import 'package:flutter/material.dart';

class JobTile extends StatelessWidget {
  final bool isCheck;
  final String jobTile;
  final void Function(bool?) checkboxchange;
  final void Function() DeleteJob;

  const JobTile({
    required this.jobTile,
    required this.isCheck,
    required this.checkboxchange,
    required this.DeleteJob,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        jobTile,
        style: TextStyle(
          decoration: isCheck ? TextDecoration.lineThrough : null,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black87,
        ),
      ),
      trailing: Checkbox(
        value: isCheck,
        onChanged: checkboxchange,
      ),
      onLongPress: DeleteJob,
    );
  }
}
