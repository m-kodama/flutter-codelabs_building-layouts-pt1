import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/core/consts.dart';
import 'package:flutter_codelab_1/ui/home/view_model/state/app_bottom_bar_item.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  final List<AppBottomBarItem> _barItems = [
    AppBottomBarItem(
      icon: Icons.home,
      label: 'ホーム',
      isSelected: true,
    ),
    AppBottomBarItem(
      icon: Icons.explore,
      label: '検索',
      isSelected: false,
    ),
    AppBottomBarItem(
      icon: Icons.turned_in_not,
      label: 'タグ',
      isSelected: false,
    ),
    AppBottomBarItem(
      icon: Icons.person_outline,
      label: 'プロフィール',
      isSelected: false,
    ),
  ];

  selectBarItem(AppBottomBarItem selectedBarItem) {
    setState(() {
      for (var barItem in _barItems) {
        barItem.isSelected = barItem == selectedBarItem;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _barItems.length,
          (index) {
            final currentBarItem = _barItems[index];

            return currentBarItem.isSelected
                ? Container(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor,
                    ),
                    child: Row(
                      children: [
                        Icon(currentBarItem.icon, color: Colors.white),
                        const SizedBox(width: 5),
                        Text(
                          currentBarItem.label,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                : IconButton(
                    onPressed: () {
                      selectBarItem(currentBarItem);
                    },
                    icon: Icon(
                      currentBarItem.icon,
                      color: Colors.grey,
                    ),
                  );
          },
        ),
      ),
    );
  }
}
