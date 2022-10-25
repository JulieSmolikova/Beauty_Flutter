// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xff435849),
          child: Center(

            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              //color: Colors.white.withOpacity(0.5),
              //padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    //padding: EdgeInsets.only(top: 20),
                    child: const Text('Skin Careo', style: TextStyle(color: Color(0xffd7c4a7), fontSize: 40, fontFamily: 'Splash'),),
                  ),

                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                          height: 300,
                          //color: Colors.white.withOpacity(0.5),
                          child: RotationTransition(
                            turns: const AlwaysStoppedAnimation(-17 / 360),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipOval(
                                child: Container(
                                  //color: Colors.white,
                                  //color: Color(0xff8a7250),
                                  child: Image.asset('assets/images/woman1.jpg',
                                      fit: BoxFit.cover),
                                ),),),),
                        ),),

                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            //color: Colors.white.withOpacity(0.5),
                            height: 300,
                            width: 220,
                            child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(-30 / 250),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipOval(
                                 child: Container(
                                      decoration: BoxDecoration(
                                        //color: Colors.white.withOpacity(0.5),
                                        border: Border.all(width: 3, color: Color(0xff8a7250),)
                                      ),
                                      //child: Image.asset('assets/images/woman1.jpg', fit: BoxFit.cover, color: Colors.transparent,),
                                      //height: double.maxFinite,
                                    ),
                                ),
                          ),),),),

                        Positioned(
                          top: 25,
                          left: 170,
                          child:
                          HexagonWidget.pointy(
                            width: 60,
                            color: const Color(0xfff6fdf7),
                            elevation: 10,
                            cornerRadius: 13.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                SizedBox(height: 5,),
                                Text('50 %', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Cinzel-Regular', fontStyle: FontStyle.italic),),
                                Text('OFF', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Cinzel-Regular', fontStyle: FontStyle.italic),),
                              ],
                        ),),),
                      ],),),

                 const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Skincare', style: TextStyle(color: const Color(0xfff6fdf7), fontSize: 50, fontFamily: 'LavishlyYours'),),
                      const SizedBox(width: 15,),
                      Container(
                        height: 50,
                        width: 90,
                        child: ClipOval(
                          child: Image.asset('assets/images/girl.jpg',
                              fit: BoxFit.cover),),),
                    ],),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 90,
                        child: ClipOval(
                          child: Image.asset('assets/images/massage.jpg', fit: BoxFit.cover),),
                      ),
                      const SizedBox(width: 10,),
                      const Text('Product &', style: TextStyle(color: Color(0xfff6fdf7), fontSize: 50, fontFamily: 'LavishlyYours'),),
                    ],),

                  Container(
                    //color: Colors.white.withOpacity(0.5),
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: const Text('Cosmetics', style: TextStyle(color: Color(0xfff6fdf7), fontSize: 50, fontFamily: 'LavishlyYours'),),
                  ),),

                  const SizedBox(height: 20,),

                  Container(
                    width: 290,
                    height: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xfffacb9f).withOpacity(0.5))
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 290,
                        height: 60,
                        child: const Text('Get Started', style: TextStyle(color: Color(0xff8a7250), fontSize: 30, fontFamily: 'BilboSwashCaps', fontWeight: FontWeight.w600),),),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
