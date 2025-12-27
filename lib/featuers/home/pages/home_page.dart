import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/featuers/home/pages/add_job.dart';
import 'package:to_do/featuers/home/widjets/list_jobs.dart';
import 'package:to_do/model/jobs_data.dart';
import 'package:to_do/core/global/theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: themeProvider.isDarkMode
                        ? Colors.grey[850]
                        : Colors.teal[400],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'الإعدادات',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    themeProvider.isDarkMode
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                  title: Text('الوضع ${themeProvider.isDarkMode ? 'الليلي' : 'النهاري'}'),
                  trailing: Switch(
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      themeProvider.toggleTheme();
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('حول التطبيق'),
                  subtitle: Text('إصدار 1.0.0'),
                ),
              ],
            ),
          );
        },
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
        child: Icon(Icons.add),
      ),
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
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[850]
                      : Colors.white,
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
