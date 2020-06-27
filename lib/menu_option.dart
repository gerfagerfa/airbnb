import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {

  final String title;
  final IconData iconData;
  final bool selected;

  MenuOption({@required this.title, @required this.iconData, @required this.selected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? Color(0xFFFF5A5F) : Colors.grey[200],
            borderRadius: BorderRadius.all(
              Radius.circular(25),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                iconData,
                size: 32,
                color: selected ? Colors.white : Colors.grey[500],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.grey[500],
                  fontSize: 18,
                )
              )
            ],
          )
        ),
      ),
    );
  }
}