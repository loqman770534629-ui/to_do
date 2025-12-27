import 'package:flutter/material.dart';
import 'package:to_do/featuers/home/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/jobs_data.dart';

void main() {
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JobsData(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
