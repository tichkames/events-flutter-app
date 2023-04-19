import 'package:flutter/material.dart';

class PositionedCTAButton extends StatelessWidget {
  const PositionedCTAButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8.0,
      left: 16.0,
      right: 16.0,
      child: FilledButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.black87)),
        onPressed: () {
          onPressed.call();
        },
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
