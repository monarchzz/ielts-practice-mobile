import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';

class ChangeGenderWidget extends StatefulWidget {
  const ChangeGenderWidget({super.key, required this.gender});

  final Gender gender;

  @override
  State<ChangeGenderWidget> createState() => _ChangeGenderWidgetState();
}

class _ChangeGenderWidgetState extends State<ChangeGenderWidget> {
  late Gender _gender;
  @override
  void initState() {
    _gender = widget.gender;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.gender,
              style: AppTextStyle.j16.copyWith(
                color: AppColor.dimGray,
              ),
            ),
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: _gender,
                  alignment: AlignmentDirectional.centerEnd,
                  items: [
                    DropdownMenuItem<Gender>(
                      value: Gender.male,
                      child: Text(Gender.male.getName(l10n)),
                    ),
                    DropdownMenuItem<Gender>(
                      value: Gender.female,
                      child: Text(Gender.female.getName(l10n)),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
            ),
          ],
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
            Navigator.pop(context, _gender);
          },
          child: Text(
            l10n.ok,
          ),
        ),
      ],
    );
  }
}
