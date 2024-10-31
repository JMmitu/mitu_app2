 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.green[600]),
        ),
        primarySwatch: Colors.purple,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Resume"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeader(),
              SizedBox(height: 20),
              buildSectionTitle("Personal Information"),
              buildPersonalInfo(),
              buildSectionTitle("Skills"),
              buildSkills(),
              buildSectionTitle("Education"),
              buildEducation(),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("Phone: 017......"),
            Text("Email: jannatulmauwamitu@gmail.com"),
          ],
        )
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildPersonalInfo() {
    return Text(
      "Name:Mitu\nLocation: Chittagong, Bangladesh\n https://github.com/JMmitu",
      style: TextStyle(fontSize: 16),
    );
  }

  Widget buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• Flutter & Dart"),
        Text("• Python"),

      ],
    );
  }

  Widget buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bachelor of Computer Science",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("IIUC, 2024"),
      ],
    );
  }
}
