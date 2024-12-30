// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:hive_database_demo/models/user.dart';
import 'package:persona_vault/controller/usercontroller.dart';
import 'package:persona_vault/views/pages/detailspage.dart';
// import 'package:persona_vault/model/user.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List img = [
    "w1",
    "m1",
    "w2",
    "m2",
    "w3",
    "w4",
    "m3",
    "w5",
    "m4",
    "w6",
    "m5",
    "w7",
    "m6",
    "w8",
    "m7",
    "w9",
    "w10",
    "m8",
    "w11",
    "m8",
    "w12",
    "m1",
    "w1",
    "m2",
    "w3",
    "w4",
    "m4",
    "w5",
    "m5",
    "w6"
  ];
  UserController controller = Get.put(UserController());

  @override
  void initState() {
    super.initState();
    controller.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<UserController>(builder: (c) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: c.usersList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.cyan,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/${img[index]}.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                    maxRadius: 40,
                  ),
                  Text(
                    "${c.usersList[index].firstName}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(DetailPage(), arguments: c.usersList[index]);
                    },
                    child: Text(
                      " View",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 224, 214, 121),
                        minimumSize: Size(180, 50)),
                  ),
                ]),
          );
        },
      );
    }));
  }
}
