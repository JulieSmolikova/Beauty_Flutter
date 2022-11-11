import 'package:flutter/material.dart';
import 'package:beauty/constants.dart';

class CustomBottomListView extends StatelessWidget {
  const CustomBottomListView({Key? key, required this.onArrival}) : super(key: key);

  final Function (String photos_new, String names_new, String review_new, String prices_new) onArrival;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: photos_new.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => onArrival(photos_new[index], names_new[index], review_new[index], prices_new[index]),
            child: Container(
                width: 320,
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
                
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),  
                          child: Image.asset('assets/images/${photos_new[index]}.jpg'),
                      )),

                    Positioned(
                        top: 15,
                        left: 156,
                        child: Text(names_new[index], style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic))),

                    const Positioned(
                      top: 43,
                      left: 153,
                      child: Icon(Icons.star, size: 20, color: Colors.orange)),

                    Positioned(
                      top: 45,
                      left: 178,
                      child: Text(review_new[index], style: const TextStyle(fontSize: 15))),

                    Positioned(
                      bottom: 18,
                      left: 156,
                      child: Text(prices_new[index])),

                    Positioned(
                      bottom: 16,
                      right: 20,
                      child: Image.asset('assets/icons/shopping-bag.png', height: 18))
                  ],),
                
          ),);
    });
  }
}