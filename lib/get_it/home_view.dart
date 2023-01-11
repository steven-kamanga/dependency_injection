import 'package:dependency_injection/get_it/locator.dart';
import 'package:dependency_injection/inherited_widget/app_info.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostMain();
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Msg extends StatelessWidget {
  const Msg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostMain extends StatelessWidget {
  const PostMain({super.key});
  @override
  Widget build(BuildContext context) {
    var appInfo = locator<AppInfo>();
    var size = locator<Size>();
    return SafeArea(
      child: Text(
        appInfo.welcomeMessage,
        style: TextStyle(fontSize: size.s5),
      ),
    );
  }
}
