import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> showQuestionAlertDialog({
  BuildContext? context,
  VoidCallback? onPressed,
  String? title,
  String? content,
}) async {
  Widget okButton = TextButton(
    onPressed: onPressed,
    child: const Text("OK"),
  );
  Widget cancelButton = TextButton(
    onPressed: () {
      context!.pop();
    },
    child: const Text("Cancel"),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text('$title'),
    content: Text("$content"),
    actions: [okButton, cancelButton],
  );

  // show the dialog
  await showDialog(
    context: context!,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
