import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persona_vault/views/pages/userspage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(UsersPage());
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 214, 121),
      body: Center(
        child: Image.asset(
          "assets/images/img1.png",
          height: 200,
          width: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
