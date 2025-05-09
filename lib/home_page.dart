import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGender = 'Any';
  int selectedAge = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find a Stranger')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Lottie.asset('assets/animated_boy_girl.json', height: 200),
          DropdownButton<String>(
            value: selectedGender,
            items: ['Any', 'Male', 'Female'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (val) => setState(() => selectedGender = val!),
          ),
          Slider(
            value: selectedAge.toDouble(),
            min: 18,
            max: 60,
            divisions: 42,
            label: '$selectedAge',
            onChanged: (value) => setState(() => selectedAge = value.toInt()),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/onlineUsers');
            },
            child: Text('Begin'),
          ),
        ],
      ),
    );
  }
}
