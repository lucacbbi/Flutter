import 'package:flutter/material.dart';
import 'package:flutter_app/Controller.dart';
import 'Controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu app",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          customSwitch(),
        ],
      ),
      body: Center(
        child: Text(
          'Counter:$count',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor:Colors.blue ,
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class customSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Controler.instance.isColorTheme,
      onChanged: (value) {
        Controler.instance.changeTheme();
      },
    );
  }
}
