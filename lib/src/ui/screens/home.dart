import 'package:flutter/material.dart';
import 'package:flutter_marathon_app/src/config/marathonroutes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          // background element
          Column(
            children: [
              Text('New York Marathon'),
              Text('30:22:39'),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MarathonRoute.secondScreen.route,
                  );
                },
                child: Text('Playbutton'),
              ),
            ],
          ),
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
