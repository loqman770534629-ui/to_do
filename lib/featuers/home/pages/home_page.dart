import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/featuers/home/pages/add_job.dart';
import 'package:to_do/featuers/home/widjets/list_jobs.dart';
import 'package:to_do/model/jobs_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal[400]),
              child: Text('الاعدادات'),
            ),
            SizedBox(width: 40),
            ListTile(
              leading: Switch(
                value: true,
                onChanged: null,
                activeColor: Colors.teal[800],
              ),
              title: Text('تغيير المظهر'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddJob((newJobName) {}),
              ),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 117, 193, 255),

        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(top: 60, bottom: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                SettingsButton(),
                SizedBox(width: 20),

                Text(
                  'To Do List',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '${Provider.of<JobsData>(context).list_jobs.length} Jobs',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Jops(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
