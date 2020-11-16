import 'package:flutter/material.dart';

/*
PrimaryButton(
                labelText: 'UPDATE',
                onPressed: () => print('Submit'),
              ),
*/

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {this.labelText, this.onPressed, this.icon, this.color, this.paddin});

  final String labelText;
  final void Function() onPressed;
  final IconData icon;
  final Color color;
  final double paddin;

  @override
  Widget build(BuildContext context) {
    /* return RaisedButton(
      color: color,
      onPressed: onPressed,
      padding: EdgeInsets.all(22),
      child: labelText == null
          ? Icon(icon)
          : Text(
              labelText.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
    ); */
    return Padding(
      padding: EdgeInsets.all((paddin == null ? 0.0 : paddin)),
      child: RaisedButton(
        disabledColor: Colors.grey[200],
        color: color,
        onPressed: onPressed,
        padding: EdgeInsets.all(22),
        child: labelText == null
            ? Icon(icon)
            : Text(
                labelText.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
