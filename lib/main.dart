import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jcc_day2/data/model/login_model.dart';
import 'package:jcc_day2/data/model/user_model.dart';
import 'package:jcc_day2/data/storage_core.dart';
import 'package:jcc_day2/ui/second_screen.dart';
import 'package:jcc_day2/ui/splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _dio = Dio();
  final storage = StorageCore();

  final _key = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isLoading = false;
  LoginModel? loginModel;


  @override
  void initState() {
    _dio.options = BaseOptions(
      baseUrl: "http://1a9c-2001-448a-2022-f8f6-e22d-25cd-d5ab-6e8c.ngrok.io",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text("Email"),
                  hintText: "Email",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Kosong";
                  }
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  hintText: "Password",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password Kosong";
                  }
                },
              ),
              const SizedBox(height: 16),
              TextButton(
                  onPressed: () {
                    if (_key.currentState?.validate() == true) {
                      print("OK");
                      doLogin(_emailController.text, _passwordController.text);
                    }
                  },
                  child: const Text("Login")),
              Visibility(
                  visible: isLoading,
                  child: Lottie.asset("assets/money_loading.json"))
            ],
          ),
        ),
      ),
    );
  }

  void doLogin(String? email, String? password) async {
    setState((){
      isLoading = true;
    });
    try {
      var response = await _dio.post("/api/v1/login",
          data: {"email": email, "password": password},
          options: Options(headers: {"Accept": "application/json"}));
      if (response.statusCode == 200) {
        setState(() {
          loginModel = LoginModel.fromJson(response.data);
          storage.saveAuthResponse(loginModel);
          isLoading = false;
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
        });
        print("token : ${storage.getAccessToken()}");
      }
    } on DioError catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e.error);
    }
  }
}
