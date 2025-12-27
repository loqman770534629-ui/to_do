import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/featuers/home/widjets/job_tile.dart';
import 'package:to_do/model/jobs_data.dart';

class Jops extends StatelessWidget {
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Consumer<JobsData>(
      builder: (context, jobsdata, child) {
        return ListView.builder(
          itemCount: jobsdata.list_jobs.length,
          itemBuilder: (context, index) {
            return JobTile(
              jobTile: jobsdata.list_jobs[index].name,
              isCheck: jobsdata.list_jobs[index].isDon,
              checkboxchange: (newValue) {
                jobsdata.updateJob(jobsdata.list_jobs[index]);
              },
              DeleteJob: () {
                jobsdata.deleteJobfromlist(jobsdata.list_jobs[index]);
              },
            );
          },
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
}
