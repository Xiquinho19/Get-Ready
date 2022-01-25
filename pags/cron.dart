import 'dart:async';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget{
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting>{


//código
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

//Parar Timer

  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }
//Reset no Timer

  void reset(){
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes= 0;
      hours = 0;

      digitSeconds = "00";
      digitMinutes = "00";
      digitHours = "00";

      started = false;
    });
  }

  void addLaps(){
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

//start no timer

  void start(){
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer){
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59){
        if(localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        }else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.1,
                  ),

                  Center(
                    child: Text("$digitHours:$digitMinutes:$digitSeconds",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 62.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0x92777676),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    //criar lista

                    child: ListView.builder(
                      itemCount: laps.length,
                      itemBuilder: (context, index){

                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Volta nº${index+1}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),

                              Text(
                                "${laps[index]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            (!started) ?start() : stop();
                          },
                          shape: const StadiumBorder(
                            side: BorderSide(color: Colors.redAccent),
                          ),

                          child: Text(
                            (!started) ? "Start" : "Pause",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 2.0,
                      ),

                      IconButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          addLaps();
                        },
                        icon: Icon(Icons.flag),
                      ),

                      SizedBox(
                        width: 8.0,
                      ),

                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            reset();
                          },
                          fillColor: Colors.redAccent,
                          shape: const StadiumBorder(
                          ),

                          child: Text(
                            "Reset",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ),
        )
    );
  }
}