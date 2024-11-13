import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FontSizeAdjuster(),
    );
  }
}

class FontSizeAdjuster extends StatefulWidget {
  @override
  _FontSizeAdjusterState createState() => _FontSizeAdjusterState();
}

class _FontSizeAdjusterState extends State<FontSizeAdjuster> {
  // مقدار اولیه سایز متن
  double _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Text Size'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // نمایش متن با سایز متغیر
            Text(
              'این متن قابل تغییر است',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20),
            // اسلایدر برای تغییر اندازه متن
            Slider(
              value: _fontSize,
              min: 10.0,
              max: 100.0,
              divisions: 90,
              label: _fontSize.toStringAsFixed(1),
              onChanged: (newSize) {
                setState(() {
                  _fontSize = newSize;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
