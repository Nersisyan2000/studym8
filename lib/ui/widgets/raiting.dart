import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class Raiting extends StatefulWidget {
  const Raiting({super.key, required this.raiting});

  final double raiting;

  @override
  State<Raiting> createState() => _RaitingState();
}

class _RaitingState extends State<Raiting> {
  double _raitingValue = 0.0;

  @override
  void initState() {
    super.initState();
    _raitingValue = widget.raiting;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => GestureDetector(
          onTap: () {
            debugPrint('hello');
            setState(() {
              _raitingValue = index.toDouble();
            });
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
              ),
              child: _raitingValue > index
                  ? const Icon(Icons.star, size: 20, color: orange)
                  : const Icon(Icons.star_border_outlined,
                      size: 20, color: orange)),
        ),
      ),
    );
  }
}
