import 'package:flutter/material.dart';

class Chips extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const Chips(this.icon, this.text, this.isSelected, {@required this.onTap});

  _ChipsState createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        decoration: widget.isSelected
            ? BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.all(Radius.circular(20.0)))
            : null,
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              size: 20.0,
              color: Colors.white,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
