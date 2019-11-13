import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback callback;
  String actionText;

  CustomDialog(this.title, this.content, this.callback,[this.actionText="Reset"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(title),
      content: new Text(content),
      actions: <Widget>[
        new FlatButton(
            onPressed: callback,
            child: new Text(actionText),
            color: Colors.white,
        )
      ],
    );
    return Container();
  }
}
