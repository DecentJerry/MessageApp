import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage('D:\FlutterProjs\messageapp\assets\th.jpg'),
            ),
            Column(
              children: [
                Text('Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                Text('Last seen at  3.00 pm',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 8,
                        color: Colors.grey)),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.phone,
                color: Colors.black,
              ),
              Icon(
                Icons.video_call,
                color: Colors.black,
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
