// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

class CustomPopUpMenuButton extends StatefulWidget {
  final PopupMenuItemSelected? onSelected;
  final List<PopupMenuItems> itemsOption;
  const CustomPopUpMenuButton({
    Key? key,
    required this.onSelected,
    required this.itemsOption,
  }) : super(key: key);

  @override
  State<CustomPopUpMenuButton> createState() => _CustomPopUpMenuButtonState();
}

class _CustomPopUpMenuButtonState extends State<CustomPopUpMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      offset: const Offset(-10, 20.0),
      itemBuilder: (context) {
        return widget.itemsOption
            .map(
              (e) => PopupMenuItem(
                height: 40,
                value: e.value,
                child: Row(
                  children: [
                    Container(
                      child: e.icon,
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        e.title ?? '',
                        style: theme()
                            .textTheme
                            .displaySmall!
                            .copyWith(overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList();
      },
      onSelected: widget.onSelected,
      child: const Icon(Icons.more_vert),
    );
  }
}

class PopupMenuItems<int> {
  final String? title;
  final Widget? icon;
  final int? value;
  PopupMenuItems({
    this.title,
    this.icon,
    this.value,
  });
}
