import 'package:dependency_injection/app_info.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  AppInfo? appInfo;

  HomeView(this.appInfo, {super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
