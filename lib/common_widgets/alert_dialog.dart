import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
    String nameButton1,
    String nameButton2,
    Color color,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            title: Text(title),
            content: Text(body,style: TextStyle(color:color),),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
                child: Text(nameButton1,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
                child: Text(nameButton2,
                  style:
                      TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },);
        return (action !=null) ? action: DialogsAction.cancel;
  }
}
