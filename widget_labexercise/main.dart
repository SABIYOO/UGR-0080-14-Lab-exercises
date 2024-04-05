import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tracker'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              // No action
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // No action
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // No action
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            'imgasset/image 8.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Robert Steven'),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.alarm_add_outlined),
                        SizedBox(width: 5),
                        Text('354646464'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.blue),
                          SizedBox(width: 10),
                          Text(
                            '354646464',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text('end'),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Online: Battery: 90%',
                style: TextStyle(color: Colors.white),
              ),
            ),
           SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.ac_unit, text: 'Icon 1'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.access_alarm, text: 'Icon 2'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.access_time, text: 'Icon 3'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.accessibility, text: 'Icon 4'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.account_balance, text: 'Icon 5'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.account_circle, text: 'Icon 6'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add, text: 'Icon 7'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_a_photo, text: 'Icon 8'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_alarm, text: 'Icon 9'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_alert, text: 'Icon 10'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_box, text: 'Icon 11'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_circle, text: 'Icon 12'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_location, text: 'Icon 13'),
                    SizedBox(width: 10),
                    IconWithText(
                        icon: Icons.add_shopping_cart, text: 'Icon 14'),
                    SizedBox(width: 10),
                    IconWithText(icon: Icons.add_to_queue, text: 'Icon 15'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        SizedBox(height: 5),
        Text(text),
      ],
    );
  }
}

