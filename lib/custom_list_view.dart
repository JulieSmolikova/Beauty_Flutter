import 'package:flutter/material.dart';
import 'package:beauty/constants.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key, required this.onCosmetics}) : super(key: key);

  final Function(String photos, String names, String prices) onCosmetics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => onCosmetics(photos[index], names[index], prices[index]),
          child: Stack(
            children: [
              RotationTransition(
                turns: const AlwaysStoppedAnimation(-15 / 360),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipOval(
                        child: SizedBox(
                          height: 225,
                          child: Image.asset('assets/images/${photos[index]}.jpg')),
                        ),
                ),),

              Positioned(
                top: 5,
                right: 15,
                child: Image.asset('assets/icons/shopping-bag.png', height: 20),
                //Icon(Icons.shopping_basket_outlined, size: 21,)
              ),

              Positioned(
                bottom: 0,
                left: 55,
                child: Column(
                  children: [
                    Text(names[index], style: const TextStyle(fontSize: 18),),
                    Text(prices[index], style: const TextStyle(fontSize: 14),)
                  ],
                ),)
              
            ],),
        );
      });
  }
}

