import 'package:flutter/material.dart';
import 'package:getreadyv1/pags/bibb.dart';
import 'package:getreadyv1/pags/cron.dart';
import 'package:getreadyv1/pags/inicio.dart';
import 'package:getreadyv1/pags/profile.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int currenTab=0;
  final List<Widget> screens = [
    Inicio(),
    Bib(),
    Setting(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Inicio();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,

          child: Container(
              height:55,
              color: currenTab == currenTab ? Colors.red: Colors.grey ,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 100,
                            onPressed: (){
                              setState((){
                                currentScreen = Bib();
                                currenTab = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/bib.png',
                                  width: 40,
                                  height: 40,
                                  color: currenTab == 0 ? Colors.black : Colors.black,
                                ),

                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 100,
                            onPressed: (){
                              setState((){
                                currentScreen = Inicio();
                                currenTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/corrida.png',
                                  width: 40,
                                  height: 40,
                                  color: currenTab == 0 ? Colors.black : Colors.black,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 100,
                            onPressed: (){
                              setState((){
                                currentScreen = Setting();
                                currenTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/cronometro.png',
                                  width: 40,
                                  height: 40,
                                  color: currenTab == 0 ? Colors.black: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 100,
                            onPressed: (){
                              setState((){
                                currentScreen = Profile();
                                currenTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/users.png',
                                  width: 40,
                                  height: 40,
                                  color: currenTab == 0 ? Colors.black : Colors.black,
                                ),
                              ],
                            ),
                          )
                        ]
                    ),
                  ]
              )
          )
      ),
    );
  }
}