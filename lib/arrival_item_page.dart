import 'package:flutter/material.dart';
import 'package:beauty/constants.dart';

class ArrivalItemPage extends StatelessWidget {
  const ArrivalItemPage({Key? key}) : super(key: key);

  static String CosmeticPhoto_new = '';
  static String CosmeticName_new = '';
  static String CosmeticReview_new = '';
  static String CosmeticPrice_new = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        body: Center(
          child: Container(
            height: 550,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(CosmeticName_new, style: TextStyle(color: Colors.brown.shade800.withOpacity(0.8), fontSize: 35, fontFamily: 'BilboSwashCaps', fontWeight: FontWeight.w600)),

                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset('assets/images/$CosmeticPhoto_new.jpg')),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20,),
                    Text(CosmeticPrice_new, style: TextStyle(color: Colors.brown.shade800.withOpacity(0.9), fontSize: 23, fontFamily: 'Cinzel-Regular', fontStyle: FontStyle.italic),),
                    const SizedBox(width: 70,),
                    const Icon(Icons.star, size: 20, color: Colors.orange),
                    const SizedBox(width: 10,),
                    Text(CosmeticReview_new, style: TextStyle(color: Colors.brown.shade800.withOpacity(0.9), fontSize: 18, fontFamily: 'Cinzel-Regular', fontStyle: FontStyle.italic)),
                  ],),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 55,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                    child: const Center(child: Text('Back', style: styles_3)),
                  ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
