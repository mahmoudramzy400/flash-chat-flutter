import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({this.buttonText, this.color, @required this.onPressed});

  final String buttonText;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    String coutryCode = Localizations.localeOf(context).languageCode;
    print(coutryCode);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
