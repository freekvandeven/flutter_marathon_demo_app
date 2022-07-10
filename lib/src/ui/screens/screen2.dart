import 'package:flutter/material.dart';
import 'package:rotating_dial_widget/rotating_dial_widget.dart';

class Screen2Screen extends StatelessWidget {
  const Screen2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: RotatingDialWidget(
          title: 'Average',
          titleColor: const Color(0xFF000000),
          dialColor: const Color(0xFF1164e9),
          markerColor: const Color(0xFFffca5c),
          textColor: const Color(0xFFffffff),
          sections: [
            RotatingDialSection(
              label: '18-29',
              value: '2:00:00',
              ringPercentage: 0.50,
              ringColor: Colors.blue,
            ),
            RotatingDialSection(
              label: '30-39',
              value: '3:00:00',
              ringPercentage: 0.10,
              ringColor: Colors.green,
            ),
            RotatingDialSection(
              label: '40-49',
              value: '4:00:00',
              ringPercentage: 0.10,
              ringColor: Colors.yellow,
            ),
            RotatingDialSection(
              label: '50-54',
              value: '5:00:00',
              ringPercentage: 0.10,
              ringColor: Colors.orange,
            ),
            RotatingDialSection(
              label: '55-59',
              value: '6:00:00',
              ringPercentage: 0.5,
              ringColor: Colors.red,
            ),
            RotatingDialSection(
              label: '60-64',
              value: '7:00:00',
              ringPercentage: 0.5,
              ringColor: Colors.pink,
            ),
            RotatingDialSection(
              label: '65-69',
              value: '8:00:00',
              ringPercentage: 0.5,
              ringColor: Colors.purple,
            ),
            RotatingDialSection(
              label: '>69',
              value: '9:00:00',
              ringPercentage: 0.5,
              ringColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
