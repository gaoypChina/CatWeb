import 'package:flutter/cupertino.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';

class CupertinoClassicalListTile extends StatelessWidget {
  const CupertinoClassicalListTile({
    Key? key,
    required this.icon,
    required this.body,
    this.padding = 15,
    this.onTap,
  }) : super(key: key);

  final Widget icon;
  final Widget body;
  final double padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SizedBox(width: padding),
            icon,
            const SizedBox(width: 10),
            Expanded(child: body),
          ],
        ),
      ),
    );
  }
}

class CupertinoDeletableTile extends StatelessWidget {
  const CupertinoDeletableTile({
    Key? key,
    required this.controller,
    required this.index,
    required this.text,
    required this.onDelete,
    required this.onTap,
  }) : super(key: key);

  final SwipeActionController controller;
  final int index;
  final String text;
  final ValueChanged<int> onDelete;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: CupertinoColors.separator.resolveFrom(context),
            ),
          ),
        ),
        child: SwipeActionCell(
          key: UniqueKey(),
          controller: controller,
          index: index,
          child: buildListBody(
            padding: 15,
            icon: CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0,
              child: Icon(
                CupertinoIcons.minus_circle_fill,
                color: CupertinoColors.systemRed.resolveFrom(context),
              ),
              onPressed: () {
                controller.openCellAt(
                  index: index,
                  trailing: true,
                );
              },
            ),
            body: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          trailingActions: <SwipeAction>[
            SwipeAction(
              widthSpace: 50,
              closeOnTap: true,
              icon: const Icon(
                CupertinoIcons.delete,
                color: CupertinoColors.white,
                size: 18,
              ),
              onTap: (CompletionHandler handler) async {
                await handler(true);
                onDelete(index);
              },
              color: CupertinoColors.systemRed.resolveFrom(context),
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListBody({
    required Widget icon,
    required Widget body,
    double? padding,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(width: padding ?? 10),
          icon,
          const SizedBox(width: 10),
          Expanded(child: body),
        ],
      ),
    );
  }
}
