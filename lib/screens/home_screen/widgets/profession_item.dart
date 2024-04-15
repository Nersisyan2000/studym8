import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class ProfessionItem extends StatefulWidget {
  const ProfessionItem({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<ProfessionItem> createState() => _ProfessionItemState();
}

class _ProfessionItemState extends State<ProfessionItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: selected ? transparent : purple),
          borderRadius: BorderRadius.circular(10.0),
          color: selected ? purple : transparent,
        ),
        child: Text(
          widget.categoryName,
          style: roboto16TextStyle.copyWith(
            fontWeight: FontWeight.w400,
            color: selected ? white : purple,
          ),
        ),
      ),
    );
  }
}
