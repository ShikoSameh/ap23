import 'package:api/usermodeeel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  Dio dio = Dio();
  String url = 'https://reqres.in/api/users';
  UserListModel? userListModel;

  Future getData() async {
    Response response = await dio.get(url);
    userListModel = UserListModel.fromJson(response.data);

    //create=post,update=put,read=get,delete=delete
  }

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('Hello to every one'),
    );
  }
}
