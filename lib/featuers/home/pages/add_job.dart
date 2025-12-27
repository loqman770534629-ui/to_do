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
            'Add Job',
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,
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
            style: FilledButton.styleFrom(backgroundColor: Colors.teal[400]),
            onPressed: () {
              Provider.of<JobsData>(
                context,
                listen: false,
              ).addnewjobs(newJobName);
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
