import 'package:flutter/material.dart';



class aaa extends StatefulWidget {
  const aaa({super.key});

  @override
  State<aaa> createState() => _aaaState();
}

class _aaaState extends State<aaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/parwiz.jpg'),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
