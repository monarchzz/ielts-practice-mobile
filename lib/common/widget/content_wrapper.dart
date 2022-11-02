import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';

class ContentWrapper extends StatelessWidget {
  const ContentWrapper({
    super.key,
    required this.headerText,
    required this.hasEditIcon,
    required this.content,
    this.onEditIconPressed,
  });

  final String headerText;
  final bool hasEditIcon;
  final Widget content;
  final VoidCallback? onEditIconPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.s4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.white,
        boxShadow: const [
          BoxShadow(
            color: AppColor.gainsboro,
            blurRadius: 12,
            offset: Offset(0, 4), // changes position of shadow
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s4,
              vertical: AppSize.s4,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    headerText.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.25,
                      color: AppColor.black,
                    ),
                  ),
                ),
                ...hasEditIcon
                    ? [
                        const SizedBox(width: AppSize.s4),
                        GestureDetector(
                          onTap: () {
                            onEditIconPressed!();
                          },
                          child: const Icon(
                            Icons.edit_outlined,
                            size: 18,
                            color: AppColor.dimGray,
                          ),
                        )
                      ]
                    : List<Widget>.empty(),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: AppColor.gainsboro,
          ),
          content
        ],
      ),
    );
  }
}
