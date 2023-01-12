import 'package:dependency_injection/inherited_widget/app_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppInfo>(create: ((_) => AppInfo())),
        Provider<MoreInfo>(create: ((_) => MoreInfo()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Consumer2<AppInfo, MoreInfo>(
            builder: (context, appInfo, moreInfo, child) {
              return HomeView();
            },
          ),
        ),
      ),
    );
  }
}
