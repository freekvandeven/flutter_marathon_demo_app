import 'package:flutter/material.dart';
import 'package:flutter_marathon_app/src/config/marathonroutes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(MarathonRoute.secondScreen.route);
        },
        child: Text('screen 1'),
      ),
    );
  }
}
