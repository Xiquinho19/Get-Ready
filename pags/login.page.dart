
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getreadyv1/pags/signup.dart';
import 'package:getreadyv1/pags/navegador.dart';

class LoginPag extends StatefulWidget {
  const LoginPag({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginPag>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/loginimg.jpg",
              width: double.maxFinite,
              height: 275,
            ),

            Positioned(
              top: 190,
              child: Container(
                padding: const EdgeInsets.all(32),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    //Linha de Username
                    const Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 16),
                      child: TextField(
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            icon: Icon(Icons.account_box,
                              color: Colors.redAccent,
                            ),
                            hintText: 'Username'
                        ),
                      ),
                    ),
                    //Linha de password
                    const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 50),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key,
                              color: Colors.redAccent,
                            ),
                            hintText: 'Password'
                        ),
                      ),
                    ),

                    //botão de login
                    Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                            Radius.circular(32)
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Home()
                              ))},
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    //dont have an account
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don´t have Account?"),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SignUpScreen()
                              ))},
                            child: const Text(
                              "Register Now",
                              style: TextStyle(
                                  color: Colors.redAccent
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}