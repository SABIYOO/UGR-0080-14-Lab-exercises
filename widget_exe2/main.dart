import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Details',
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: OrderDetailsScreen(),
    );
  }
}

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Order Details'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 500,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              child: Text(
                'Completed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('#4564'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('#3537'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Added SizedBox for spacing
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              child: Text(
                'Purchased Items',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      // Replace the image with your desired image widget
                      // For example: Image.asset('your_image_path'),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'tetrertrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      // Replace the image with your desired image widget
                      // For example: Image.asset('your_image_path'),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'tetrertrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
