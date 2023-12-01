import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio_app/routes.dart';

class AboutScreen extends StatefulWidget
{

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  Future<bool> backBtn() async
  {
    router.pushReplacementNamed('intro');
    return false;
  }

  List web = ['HTML','CSS','JavaScript','PHP'];

  List app = ['Flutter'];

  List db = ['MySQL','Firebase'];

  List langs = ['Java','Python','Dart'];

  bool ts = false;

  bool ss = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backBtn,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('About Me' , style: TextStyle(fontSize: 25),)),
            bottom: const TabBar(tabs: [Tab(icon: Icon(Icons.lightbulb),text: 'Skills',),Tab(text: 'Projects',icon: Icon(Icons.work),)]),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ss ? ss = false : ss = true;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Soft Skills' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              Icon(ss ? Icons.arrow_drop_up : Icons.arrow_drop_down , color: Colors.white, size: 25,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Visibility(
                      visible: ss,
                      maintainState: true,
                      maintainAnimation: true,
                      child: AnimatedOpacity(
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 300),
                        opacity: ss ? 1 : 0,
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Analytical Skills' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Team Work' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Intrapersonal Skills' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Responsible' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Quick Learner' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text('Critical Thinking' , style: TextStyle(fontSize: 18),),),),
                              SizedBox(height: 5,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ts ? ts = false : ts = true;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Technical Skills' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              Icon(ts ? Icons.arrow_drop_up : Icons.arrow_drop_down , color: Colors.white, size: 25,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Visibility(
                      visible: ts,
                      maintainAnimation: true,
                      maintainState: true,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: ts ? 1 : 0,
                        curve: Curves.easeInOut,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                                child: Text('Web Development Skills' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(web[0] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(web[1] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(web[2] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(web[3] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 15,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                                child: Text('DataBase Management Skills' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(db[0] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(db[1] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 15,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                                child: Text('Programming Languages' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(langs[0] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(langs[1] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 5,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(langs[2] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 15,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5,right: 5),
                                child: Text('Framework Skills' , style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(padding: const EdgeInsets.only(left: 10), child: Container(child: Text(app[0] , style: TextStyle(fontSize: 18),),),),
                            SizedBox(height: 15,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      color: Colors.green,
                      child: SizedBox(
                        height: 156,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Image.asset('assets/img/icon.jpg', width: 130, height: 140, fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10 , left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text("Matrix Events" , style: TextStyle(color: Colors.white , fontSize: 20),),
                                  ),
                                  SizedBox(height: 10,),
                                  Expanded(child: Text("An Android app designed using \nFlutter and Firebase. Containing \nBackend Functions and User Friendly\nGUI to help streamline the process of \nOrganizing and Managing events \nthrough the app." , style: TextStyle(color: Colors.white , fontSize: 12),)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 7,
                      color: Colors.pink,
                      child: SizedBox(
                        height: 156,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Image.asset('assets/img/android.png' , width: 130, height: 140, fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text("Deepak's Portfolio App" , style: TextStyle(color: Colors.white , fontSize: 20),),
                                  ),
                                  SizedBox(height: 10,),
                                  Expanded(child: Text("An Android app designed using \nFlutter framework and Dart Language. \nContaining brief introduction of my \nProgramming and Soft Skills. \nWith added options to reach out \nto me on my various Social Platforms" , style: TextStyle(color: Colors.white , fontSize: 12),)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}