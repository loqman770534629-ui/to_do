import 'package:flutter/material.dart';
import 'package:to_do/model/job.dart';

class JobsData extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  List<Jobs> list_jobs = [];

  void addnewjobs(newJobName) {
    list_jobs.add(Jobs(name: newJobName));
    notifyListeners();
  }

  void updateJob(Jobs job) {
    job.changeDone();
    notifyListeners();
  }

  void deleteJobfromlist(Jobs job) {
    list_jobs.remove(job);
    notifyListeners();
  }

  // void makeDrawer() {
  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: <Widget>[
  //         DrawerHeader(
  //           decoration: BoxDecoration(color: Colors.teal[400]),
  //           child: Text('الاعدادات'),
  //         ),
  //         ListTile(
  //           title: Text('تغيير المظهر'),
  //           leading: Switch(value: false, onChanged: null),
  //         ),
  //       ],
  //     ),
  //   );
  //   notifyListeners();
  // }
}
