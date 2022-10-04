import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatelessWidget {
  final String Username;
  final String Password;

  const SecondScreen({
    Key? key,
    required this.Username,
    this.Password =""
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("ini halaman 2"),
      ),
      body: Column(
        children: [
          Text("Halo $Username, passwordmu adalah $Password"),
          ElevatedButton(
              onPressed: (){
                _LaunchURL("https://instagram.com");
              },
              child: Text("link instagram"))
        ],
      ),
      // body: Text("Hello $Username, passwordmu adalah $Password "),
      // body: ElevatedButton(
      //   child: Text("back"),
      //   onPressed: (){
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }
  void _LaunchURL(_url) async {
    if(!await launch(_url)) throw 'could not launch $_url';
  }
}
