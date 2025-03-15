import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> sliderImages = [
    'https://via.placeholder.com/400x200',
    'https://via.placeholder.com/400x200',
    'https://via.placeholder.com/400x200',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              'data:image/jpeg;base64,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',
              height: 40,
            ),
            SizedBox(width: 10),
            Text('BGNU'),
            Spacer(),
            IconButton(
              icon: Icon(Icons.login),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.school),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Features',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Grade Book'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradeBookScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 200, autoPlay: true, enlargeCenterPage: true),
            items: sliderImages.map((image) {
              return Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Text(
                  'Welcome to BGNU',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'BGNU is a platform designed to help students with essential tools. You can use the calculator for quick calculations and manage student grades with ease.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Center(
              child: Text(
                '© 2025 BGNU. All Rights Reserved.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Center(child: Text("Calculator Screen")),
    );
  }
}

class GradeBookScreen extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'Ali', 'semester': 'Fall 2024', 'grade': 'A'},
    {'name': 'Sara', 'semester': 'Spring 2024', 'grade': 'B+'},
    {'name': 'Ahmed', 'semester': 'Fall 2023', 'grade': 'A-'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grade Book')),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Student Grades',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: ListTile(
                      title: Text(students[index]['name']!),
                      subtitle: Text('Semester: ${students[index]['semester']}'),
                      trailing: Text(
                        students[index]['grade']!,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
