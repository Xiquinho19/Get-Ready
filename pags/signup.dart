import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SignUpScreen>{

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget(){
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
                padding: EdgeInsets.all(32),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62),
                    )
                ),
                child: Column(
                  children: <Widget>[
                    //Linha de Nome
                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 16),
                      child: TextField(
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            icon: Icon(Icons.person,
                              color: Colors.redAccent,
                            ),
                            hintText: 'Nome Completo'
                        ),
                      ),
                    ),
                    //Linha username
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
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

                    //linha de mail
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: TextField(
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email,
                              color: Colors.redAccent,
                            ),
                            hintText: 'Email'
                        ),
                      ),
                    ),

                    //linha de password
                    Padding(
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
                    Container
                      (
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(
                            Radius.circular(32)
                        ),
                      ),
                      child: Center(
                        child: Text('Register',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
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