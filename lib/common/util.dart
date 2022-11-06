import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/widget/loading_dialog.dart';

Future<dynamic> showLoadingDialog() {
  return showDialog<dynamic>(
    context: getIt.navigator.context,
    builder: (_) => const LoadingDialog(),
  );
}

Future<dynamic> showErrorMessageDialog(String alertTitle, String message) {
  return showDialog<String>(
    context: getIt.navigator.context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          alertTitle,
          style: AppTextStyle.j18,
        ),
        content: Text(
          message,
          style: AppTextStyle.j14,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}

Future<dynamic> showMessageDialog(String alertTitle, String message) {
  return showDialog<String>(
    context: getIt.navigator.context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          alertTitle,
          style: AppTextStyle.j18,
        ),
        content: Text(
          message,
          style: AppTextStyle.j14,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
