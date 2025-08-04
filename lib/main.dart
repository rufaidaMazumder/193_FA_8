import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentInfo',
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 221, 224),
      appBar: AppBar(
        title: const Center(
          child: Text("Digital ID Card", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: const Color.fromARGB(255, 96, 161, 189),
        elevation: 3,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: const Color.fromARGB(255, 227, 182, 182),
                  child: const CircleAvatar(
                    radius: 54,
                    backgroundImage: AssetImage("images/picture.jpg"),
                  ),
                ),

                const SizedBox(height: 16),

                Column(
                  children: const [
                    Text(
                      "Rufaida Jannah Mazumder",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Batch:61, Department of CSE",
                      style: TextStyle(
                        color: Color.fromARGB(255, 63, 63, 63),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Divider(color: Colors.grey, thickness: 1, height: 20),
                ),

                const SizedBox(height: 8),

                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("ID: 0182310012101193"),
                ),

                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email:mazumderrufaida@gmail.com"),
                ),

                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone: 01736538462"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
