import 'package:flutter/material.dart';
import 'package:sic_pertemuan3/modul4/second_screen.dart';

class LoginPageStateful extends StatefulWidget {
  const LoginPageStateful({Key? key}) : super(key: key);

  @override
  State<LoginPageStateful> createState() => _LoginPageStatefulState();
}

class _LoginPageStatefulState extends State<LoginPageStateful> {
  String username = "";
  String password = "";
  bool isLoginSucces = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //untuk hp yang ada notch menyesuaikan tampilan
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        enabled: true,
        decoration: InputDecoration(
            hintText: "username",
            label: Text("username"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        obscuringCharacter: '#',
        enabled: true,
        decoration: InputDecoration(
            hintText: "password",
            label: Text("password"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecondScreen(Username: username, Password: password);
            }));
          },
          //   String text = "";
          //
          //   if (username == "fluttermobile" && password == "flutter123") {
          //     setState(() {
          //
          //     });
          //     text = "login sukses";
          //     isLoginSucces = true;
          //   } else {
          //     text = "login gagal";
          //     isLoginSucces = false;
          //   }
          //   SnackBar snackBar = SnackBar(content: Text(text));
          //
          //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // },
          child:(isLoginSucces)? Text("Log Out") : Text("Login"),
        ),
    );
  }
}
