import 'package:flutter/material.dart';

class User{
  final String name;
  final String profile;
  final String time;
  final bool isOnline;
  final String Phone;

  User({
    required this.name,
    required this.profile,
    required this.Phone,
    required this.time,
    required this.isOnline
  });
}

List<User> userdata=[
    User(name: "Shinaf Muhammad", profile:"assets/image/4035892-200.png", Phone: "7510728937", time: "6:00PM", isOnline:true),
    User(name: "Adinan nazar", profile: "assets/image/women2.png", Phone: "9876543210", time: "10:11AM", isOnline: false),
    User(name: "Jasmin Sherin", profile: "assets/image/download.png", Phone: "9455463728", time: "7:00AM", isOnline: false),
    User(name: "Abdul rahman", profile: "assets/image/download (1).png", Phone: "7364908763", time: "1:13PM", isOnline: false),
    User(name: "Shahin sha", profile: "assets/image/women2.png", Phone: "9876567348", time: "3:44AM", isOnline: false),
    User(name: "Shinaf Muhammad", profile: "assets/image/4035892-200.png", Phone: "7510728937", time: "6:00PM", isOnline:true),
    User(name: "Adinan nazar", profile: "assets/image/img_male.png", Phone: "9876543210", time: "10:11AM", isOnline: false),
    User(name: "Jasmin Sherin", profile: "assets/image/img_women.png", Phone: "9455463728", time: "7:00AM", isOnline: false),
    User(name: "Abdul rahman", profile: "assets/image/download.png", Phone: "7364908763", time: "1:13PM", isOnline: false),
];