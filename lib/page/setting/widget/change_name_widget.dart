import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

class ChangeNameWidget extends StatefulWidget {
  const ChangeNameWidget({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  @override
  State<ChangeNameWidget> createState() => _ChangeNameWidgetState();
}

class _ChangeNameWidgetState extends State<ChangeNameWidget> {
  final _formKey = GlobalKey<FormState>();

  late String _firstName;
  late String _lastName;

  @override
  void initState() {
    _firstName = widget.firstName;
    _lastName = widget.lastName;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(
        l10n.update,
        style: AppTextStyle.j18,
      ),
      content: SizedBox(
        width: double.infinity,
        height: 100,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.firstNameEmpty;
                    }

                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _firstName = value;
                    });
                  },
                  style: AppTextStyle.j16,
                  maxLength: 20,
                  decoration: InputDecoration(
                    label: Text(
                      l10n.firstName,
                      style: AppTextStyle.j14,
                    ),
                  ),
                  initialValue: _firstName,
                ),
              ),
              const SizedBox(
                width: AppSize.s4,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.firstNameEmpty;
                    }

                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _lastName = value;
                    });
                  },
                  style: AppTextStyle.j16,
                  maxLength: 20,
                  decoration: InputDecoration(
                    label: Text(
                      l10n.lastName,
                      style: AppTextStyle.j14,
                    ),
                  ),
                  initialValue: _lastName,
                ),
              )
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, null);
          },
          child: Text(
            l10n.cancel,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, {
              'firstName': _firstName,
              'lastName': _lastName,
            });
          },
          child: Text(
            l10n.ok,
          ),
        ),
      ],
    );
  }
}
