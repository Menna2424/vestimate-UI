import 'package:flutter/material.dart';

class SelectableContainer extends StatefulWidget {

  final String text;

  final Icon ico;
  SelectableContainer({Key?key ,required this.ico, required this.text}):super(key: key);

  @override
  State<SelectableContainer> createState() => _SelectableContainerState();
}

class _SelectableContainerState extends State<SelectableContainer> {
  bool isSelected = false;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;

        });
      },
      child: Container(
        height: 150,
        width: 140,
        decoration: BoxDecoration(
          color: isSelected ? Colors.indigo : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.ico.icon,
              color:isSelected?Colors.white:Colors.indigo ,
              size: widget.ico.size,
            ),

            SizedBox(
              height: 5,
            ),
            Text(
              widget.text,
              style: TextStyle(color:isSelected? Colors.white:Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
