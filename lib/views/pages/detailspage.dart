import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persona_vault/controller/usercontroller.dart';
import 'package:persona_vault/model/user.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  UserController c = Get.find<UserController>();
  User h = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 38, 197, 225),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      "FirstName: ${h.firstName}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "MaidenName: ${h.maidenName}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "LastNme: ${h.lastName}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Age: ${h.age}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Gender: ${h.gender}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Email: ${h.email}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Phone: ${h.phone}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Username: ${h.username}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Password: ${h.password}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "BloodGroup: ${h.bloodGroup}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Height: ${h.height}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Weight: ${h.weight}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "EyeColor: ${h.eyeColor}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Hair: ${h.hair}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Ip: ${h.ip}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Macaddress: ${h.macAddress}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "University: ${h.university}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Bank: ${h.bank}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Company: ${h.company}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Ein: ${h.ein}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Ssn: ${h.ssn}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "UserAgent: ${h.userAgent}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Crypto: ${h.crypto}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      "Role: ${h.role}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
