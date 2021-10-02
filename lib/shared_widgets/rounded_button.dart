import 'package:flutter/material.dart';
import 'package:zena_tamkin/config/colors.dart';

/// RoundedButton
class RoundedButton extends StatefulWidget {
  final String? text;
  final Function? press;
  final Color color, textColor;
  final bool busy;

  const RoundedButton({
    Key? key,
    this.text,
    this.press,
    this.color = primaryColor,
    this.textColor = Colors.white,
    this.busy = false,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press as void Function()?,
      child: Container(
          width: MediaQuery.of(context).size.width * .8,
          padding: EdgeInsets.symmetric(vertical: 10),
          height: 55,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                //colors: [Color(0xFFB7BBF5), Color(0xFF535AB8)],
                colors: [primaryColor, primaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: !widget.busy
              ? Center(
                  child: Text(
                    widget.text!,
                    style: TextStyle(
                        color: widget.textColor, fontWeight: FontWeight.w500),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                )),
    );
  }
}
