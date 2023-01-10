import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Permission"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {},
              child: Text("Bluetooth"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                PermissionStatus res = await Permission.calendar.request();
              },
              child: Text("Calander"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                PermissionStatus res = await Permission.storage.request();
              },
              child: Text("Storage"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                PermissionStatus res = await Permission.location.request();
              },
              child: Text("Location"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                PermissionStatus res = await Permission.camera.request();
              },
              child: Text("Camera"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                PermissionStatus res = await Permission.photos.request();
              },
              child: Text("Photos"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () async {
                  PermissionStatus res = await Permission.contacts.request();
                },
                child: Text("Contect")),
          ],
        ),
      ),
    );
  }
}
