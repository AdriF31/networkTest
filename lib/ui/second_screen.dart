import 'package:flutter/material.dart';
import 'package:jcc_day2/data/storage_core.dart';
import 'package:jcc_day2/ui/profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final storage = StorageCore();

  String nama = "User";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
        }, child: const Icon(Icons.person))],
      ),
      body: Center(child: Text("Nama anda : $nama")),
    );
  }

  @override
  void initState() {
    super.initState();
    getNama();
  }

  void getNama() async {
    setState(() {
      nama = storage.getCurrentUsername() ?? "User";
    });
  }
}
