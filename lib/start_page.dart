// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:beauty/constants.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xff435849),
          child: Center(

            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    child: const Text('Skin Careo',
                      style: styles),
                  ),

                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 300,
                            child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(-17 / 360),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipOval(
                                  child: Container(
                                    child: Image.asset('assets/images/woman1.jpg',
                                      fit: BoxFit.cover),
                                  ),),),),
                          ),),

                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            height: 300,
                            width: 220,
                            child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(-30 / 250),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipOval(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 3, color: Color(0xff8a7250),)
                                    ),
                                  ),),
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
                                Text('50 %', style: styles_1),
                                Text('OFF', style: styles_1),
                              ],
                            ),),),
                      ],),),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Skincare', style: styles_2),
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
                      const Text('Product &', style: styles_2),
                    ],),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: const Text('Cosmetics', style: styles_2),
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
                      onPressed: (){
                        Navigator.of(context).pushNamed('/top_page');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xfffacb9f).withOpacity(0.5))
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 290,
                        height: 60,
                        child: const Text('Get Started', style: styles_3),),),
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
