import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jcc_day2/data/model/profile_model.dart';
import 'package:jcc_day2/data/storage_core.dart';
import 'package:jcc_day2/main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _dio = Dio();
  final storage = StorageCore();

  bool isLoading = false;
  ProfileModel? profileModel;

  @override
  void initState() {
    _dio.options = BaseOptions(
      baseUrl: "http://1a9c-2001-448a-2022-f8f6-e22d-25cd-d5ab-6e8c.ngrok.io",
    );
    getUserProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          GestureDetector(onTap: () {
            storage.deleteAuthResponse();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
          }, child: Icon(Icons.logout))
        ],
      ),
      body: profileModel != null ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("http://1a9c-2001-448a-2022-f8f6-e22d-25cd-d5ab-6e8c.ngrok.io/storage/${profileModel?.data?.image}"),
              radius: 60,
            ),
            SizedBox(height: 16),
            Text(profileModel?.data?.name ?? "-"),
            Text(profileModel?.data?.email ?? "-"),
          ],
        ),
      ) : Center(child: const CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation(Colors.blue))),
    );
  }

  void getUserProfile() async {
    setState(() {
      isLoading = true;
    });
    try {
      var response = await _dio.get(
          "/api/v1/users/${storage.getCurrentUserId()}",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer ${storage.getAccessToken()}"
          }));
      if (response.statusCode == 200) {
        setState(() {
          profileModel = ProfileModel.fromJson(response.data);
          isLoading = false;
        });
      }
    } on DioError catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e.error);
    }
  }
}
