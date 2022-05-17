import 'package:biboo/config/Palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SwitchButton extends StatefulWidget {
  SwitchButton({Key? key, required this.switchValue, required this.onChange})
      : super(key: key);
  bool switchValue;
  Function onChange;

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: widget.switchValue ? Palette.primary : Palette.placeholder,
              width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: 50,
        height: 30,
        child: Transform.scale(
          transformHitTests: false,
          scale: .9,
          child: CupertinoSwitch(
            value: widget.switchValue,
            thumbColor:
            widget.switchValue ? Palette.primary : Palette.placeholder,
            activeColor: Palette.white,
            trackColor: Palette.white,
            onChanged: (value) {
              setState(() {
                widget.switchValue = value;
                widget.onChange(value);
              });
            },
          ),
        ),
      ),
    );
  }
}