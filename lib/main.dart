
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: baseColor,
        appBar: AppBar(
          title: Text('Classic Design'),
        ),
        body: user_interface(),
      ),
    );
  }
}

class user_interface extends StatefulWidget {
  const user_interface({Key? key}) : super(key: key);

  @override
  _user_interfaceState createState() => _user_interfaceState();
}

class _user_interfaceState extends State<user_interface> {
  TextEditingController textarea = TextEditingController();
  bool isSwitched = false;
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 80,
                child: NeumorphicButton(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 8,
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(90)),
                  ),
                  child: Icon(
                    Icons.brightness_low,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 30),
              SizedBox(
                height: 60,
                width: 80,
                child: NeumorphicButton(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 8,
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(90)),
                  ),
                  child: Icon(Icons.search, size: 40),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 30),
              SizedBox(
                height: 60,
                width: 80,
                child: NeumorphicButton(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 8,
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(90)),
                  ),
                  child: Icon(Icons.camera_alt, size: 40),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(height: 50),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text('Write Your Message'),
                TextField(
                  controller: textarea,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                ),
              ],
            ),
          ),
          Divider(),
          NeumorphicButton(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 8,
            ),
            child: Text('Submit'),
            onPressed: () {},
          ),
          Divider(height: 40),
          Row( mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text('Switch Button1'),
              Text('Switch Button2'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: NeumorphicSwitch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                ),
              ), Padding(
                padding: const EdgeInsets.only(top: 10),
                child: NeumorphicSwitch(
                  value: isSwitched2,
                  onChanged: (value) {
                    setState(() {
                      isSwitched2 = value;
                      print(isSwitched2);
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}