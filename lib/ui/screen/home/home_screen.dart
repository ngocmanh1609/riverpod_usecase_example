import 'package:flutter/material.dart';
import 'package:riverpod_usecase_example/routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("TODO"),
            ElevatedButton(
              child: Text("Navigate to Github Overview"),
              onPressed: () {
                Navigator.pushNamed(context, Routes.githubOverview);
              },
            ),
          ],
        ),
      ),
    );
  }
}
