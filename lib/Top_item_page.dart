import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:beauty/constants.dart';

class TopItemPage extends StatelessWidget {
  const TopItemPage({Key? key}) : super(key: key);

  static String CosmeticPhoto = '';
  static String CosmeticName = '';
  static String CosmeticPrice = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        body: Center(
          child: SizedBox(
            height: 560,
            width: 320,
            child: Column(
              children: [
                Image.asset('assets/images/$CosmeticPhoto.jpg'),
                const SizedBox(height: 10,),
                TextSelectionTheme(
                  data: TextSelectionThemeData(selectionColor: Colors.white.withOpacity(0.7)),
                  child: SelectableText(CosmeticName,
                    style: const TextStyle(color: Colors.brown, fontSize: 23)),
                ),
                const SizedBox(height: 5,),
                Text(CosmeticPrice, style: const TextStyle(color: Colors.brown, fontSize: 18)),
                const SizedBox(height: 20,),
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
