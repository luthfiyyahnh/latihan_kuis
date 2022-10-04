import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
      LoginPage({Key? key}) : super(key: key);

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(//untuk hp yang ada notch menyesuaikan tampilan
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

  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        enabled: true,
        decoration: InputDecoration(
          hintText: "username",
          label: Text("username"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
      ),
    );
  }
  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        obscuringCharacter: '#',
        enabled: true,
        decoration: InputDecoration(
            hintText: "password",
            label: Text("password"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
      ),
    );
  }
  Widget _loginButton(BuildContext context){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
        onPressed: (){
          String text="";

          if(username == "fluttermobile"
          && password== "flutter123"){
            text = "login sukses";
          } else {
            text = "login gagal";
          }
          SnackBar snackBar = SnackBar(content: Text(text));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login"),
      )
    );
  }
}
