import 'package:flutter/material.dart';

class QuickSearchButton extends StatelessWidget {
  final String btnLabel;
  final void Function()? onTap;
  const QuickSearchButton(
      {Key? key, required this.btnLabel, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(btnLabel),
            const Icon(Icons.arrow_forward),
          ],
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      ),
    );
  }
}
