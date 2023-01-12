import 'package:dependency_injection/inherited_widget/app_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Mapper extends StatelessWidget {
  const Mapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostMain extends StatefulWidget {
  const PostMain({super.key});

  @override
  State<PostMain> createState() => _PostMainState();
}

class _PostMainState extends State<PostMain> {
  @override
  Widget build(BuildContext context) {
    var appInfo = Provider.of<AppInfo>(context);
    var moreInfo = Provider.of<MoreInfo>(context);
    return SafeArea(
      child: Column(
        children: [
          Text(
            appInfo.welcomeMessage,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          Text(moreInfo.welcomeMessage),
        ],
      ),
    );
  }
}
