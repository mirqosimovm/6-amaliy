import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int currentIndex = 0;
  @override
  State<MyApp> createState() =>
      _MyAppState(); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('6-amaliy ish'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png"),
              radius: 75,
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.yellow,
                    width: 5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String text = controller.text;
                  controller2.text = text;
                });
              },
              child: Text("Yuborish"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.black87,
          ),
          child: BottomNavigationBar(
            backgroundColor: Color(0xFF340516),
            fixedColor: Colors.orange,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index; // Bosilgan tugma indeksini o'zgartirish
              });
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Color(0xFF06DFE8),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: "Biznes",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.battery_unknown_sharp),
                label: "Jadval",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarms),
                label: "Hamyon",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
