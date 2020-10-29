import 'package:flutter/material.dart';
import 'package:proyek_addah_attafwagiffar/shared/constant.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key key, this.title, this.onPressed, this.icon, this.isActive = false});

  final String title;
  final Function onPressed;
  final IconData icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    double circular = 20;
    return (isActive)
        ? AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(circular),
              color: Colors.black12,
            ),
            duration: bgShow,
            child: IconButton(
                highlightColor: Colors.black,
                iconSize: 50,
                color: Color(0xff47cdc6),
                icon: Icon(
                  icon,
                ),
                tooltip: title,
                onPressed: () {
                  onPressed();
                }),
          )
        : IconButton(
            highlightColor: Colors.black,
            iconSize: 50,
            color: Color(0xff47cdc6),
            icon: Icon(
              icon,
            ),
            tooltip: title,
            onPressed: () {
              circular = 50;
              onPressed();
            });
  }
}
