import 'package:beauty/Top_item_page.dart';
import 'package:beauty/arrival_item_page.dart';
import 'package:beauty/constants.dart';
import 'package:beauty/custom_bottom_list_view.dart';
import 'package:beauty/custom_list_view.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            //height: double.maxFinite,
            width: double.maxFinite,
            color: const Color(0xfff5f5eb),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

               const SizedBox(height: 45,),

               Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/start_page');
                        },
                        child: Image.asset('assets/icons/menu3.png', height: 25,)),
                      Image.asset('assets/icons/magnifying-glass.png', height: 24,),
                      Image.asset('assets/icons/shopping-bag.png', height: 25),
                    ],),),

                const SizedBox(height: 7,),

              Text('Our top item', style: styles_3.copyWith(color: Colors.brown.shade800.withOpacity(0.8), fontSize: 50)),

              const SizedBox(height: 20,),

              Container(
              height: 265,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: CustomListView(
                onCosmetics: (String photos, String names, String prices){
                  print(photos);
                  print(names);
                  print(prices);
                  TopItemPage.CosmeticPhoto = photos;
                  TopItemPage.CosmeticName = names;
                  TopItemPage.CosmeticPrice = prices;
                  Navigator.of(context).pushNamed('/Top_item_page');}),
              ),

              const SizedBox(height: 35,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('New Arrival', style: styles_3.copyWith(color: Colors.brown.shade800.withOpacity(0.8), fontSize: 40),),
                  Text('See All', style: styles_3.copyWith(color: Colors.grey.shade600, fontSize: 22),)
                ],
                ),

              Expanded(
                child: Container(
                  //height: 250,
                  width: 355,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: CustomBottomListView(
                    onArrival: (String photos_new, String names_new, String review_new, String prices_new){
                      print(photos_new);
                      print(names_new);
                      print(review_new);
                      print(prices_new);
                      ArrivalItemPage.CosmeticPhoto_new = photos_new;
                      ArrivalItemPage.CosmeticName_new = names_new;
                      ArrivalItemPage.CosmeticReview_new = review_new;
                      ArrivalItemPage.CosmeticPrice_new = prices_new;
                      Navigator.of(context).pushNamed('/arrival_item_page');
                    },),),
              ),
               ],
            ),
          ),
        ),
      ),
    );
  }
}

