import 'package:flutter/material.dart';
import 'package:flutter_marathon_app/src/config/marathonroutes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          // background element
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'New York Marathon',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
              Text(
                '30:22:39',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                '2019/11/03 9:00am',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MarathonRoute.secondScreen.route,
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/icon/icon.png'),
                        ),
                        Column(
                          children: [
                            Text('Laura Garcia'),
                            Text('Registration approved'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        for (var item in {
                          'Travel': Icons.airplanemode_active,
                          'Hotel': Icons.hotel,
                          'Notice': Icons.notifications,
                          'Service': Icons.local_hospital,
                        }.entries) ...[
                          Column(
                            children: [
                              Icon(
                                item.value,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                item.key,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                    Text(
                      'History',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
              );
            },
          ),
          // Bottom navbar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.sports_martial_arts,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MarathonRoute.firstScreen.route,
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.wheelchair_pickup,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.wheelchair_pickup,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Text(
                        'Your \nrace',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.sports_kabaddi,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
