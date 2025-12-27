import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/jobs_data.dart';

class AddJob extends StatelessWidget {
  final Function addJobToList;

  AddJob(this.addJobToList);

  @override
  Widget build(BuildContext context) {
    String? newJobName;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            'إضافة مهمة جديدة',
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.blue[300]
                  : Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newJob) {
              newJobName = newJob;
            },
          ),
          SizedBox(height: 30),

          FilledButton(
            onPressed: () {
              if (newJobName != null && newJobName!.trim().isNotEmpty) {
                Provider.of<JobsData>(
                  context,
                  listen: false,
                ).addnewjobs(newJobName);
                Navigator.pop(context);
              }
            },
            child: Text(
              'إضافة',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
