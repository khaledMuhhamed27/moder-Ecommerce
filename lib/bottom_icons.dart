import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomIcon {
  final IconData unselected, selected;

  BottomIcon({
    required this.selected,
    required this.unselected,
  });
}

List<BottomIcon> bottomIcons = [
  // 1
  BottomIcon(
    selected: Icons.home_filled,
    unselected: Icons.home_outlined,
  ),
  // 2
  BottomIcon(
    selected: CupertinoIcons.chat_bubble_text_fill,
    unselected: CupertinoIcons.chat_bubble_text,
  ),
  // 3
  BottomIcon(
    selected: CupertinoIcons.compass_fill,
    unselected: CupertinoIcons.compass,
  ),
  // 4
  BottomIcon(
    selected: Icons.person_rounded,
    unselected: Icons.person_outline_rounded,
  ),
];
