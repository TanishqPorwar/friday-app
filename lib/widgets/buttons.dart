import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  const AuthButton({
    Key key,
    this.text,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FlatButton(
          
          minWidth: 0.55.sw,
          height: 0.06.sh,
          // padding: EdgeInsets.symmetric(horizontal: 0.2.sw, vertical: 0.02.sh),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: onPressed,
          child: AutoSizeText(
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          color: color,
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final double width;
  const ActionButton({
    Key key,
    this.text,
    this.onPressed,
    this.color,
    this.width = 0.25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FlatButton(
          minWidth: width.sw,
          height: 0.06.sh,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: onPressed,
          child: AutoSizeText(
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          color: color,
        ),
      ),
    );
  }
}
