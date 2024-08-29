import 'package:flutter/material.dart';
import 'package:vestimate_ui/components/bottom_navegationbar.dart';
import 'package:vestimate_ui/components/selectable_container.dart';

class VestimateScreen extends StatefulWidget {
  const VestimateScreen({super.key});

  @override
  State<VestimateScreen> createState() => _VestimateScreenState();
}

class _VestimateScreenState extends State<VestimateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Image.asset(
          "images/vestimate.png",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Text("Choose your area ", style: TextStyle(fontSize: 25)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableContainer(
                  ico: Icon(
                    Icons.shopping_cart_outlined,
                    size: 60,
                  ),
                  text: "Buying"),
              SizedBox(
                width: 20,
              ),
              SelectableContainer(
                  ico: Icon(
                    Icons.house_outlined,
                    size: 60,
                  ),
                  text: "Selling"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableContainer(
                  ico: Icon(
                    Icons.shopping_bag_outlined,
                    size: 60,
                  ),
                  text: "Trades"),
              SizedBox(
                width: 20,
              ),
              SelectableContainer(
                  ico: Icon(
                    Icons.slow_motion_video_outlined,
                    size: 60,
                  ),
                  text: "Videos"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableContainer(
                  ico: Icon(
                    Icons.percent,
                    size: 60,
                  ),
                  text: "Deals"),
              SizedBox(
                width: 20,
              ),
              SelectableContainer(
                  ico: Icon(
                    Icons.menu_book,
                    size: 60,
                  ),
                  text: "Case Study"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavegationBar(),
    );
  }
}
