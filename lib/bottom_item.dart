import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {

  final String title;
  final IconData iconData;
  final bool selected;

  BottomItem({@required this.title, @required this.iconData, @required this.selected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: selected ? Color(0xFFFF5A5F) : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: selected ? Color(0xFFFF5A5F).withOpacity(0.2) : Colors.transparent,
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Icon(
              iconData,
              size: 22,
              color: selected ? Colors.white : Colors.grey[500],
            ),

            selected ? Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                )
              ),
            )
            : Container(),

          ],
        )
      ),
    );
  }
}