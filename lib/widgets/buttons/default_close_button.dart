import 'package:flutter/material.dart';

class DefaultCloseButton extends StatelessWidget {
  final Color color;
  final double size;
  final VoidCallback onPressed;

  const DefaultCloseButton({
    Key? key,
    required this.color,
    required this.size,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: Icon(
        Icons.close,
        size: size,
      ),
      color: color,
      tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
      onPressed: () {
        // ignore: unnecessary_null_comparison
        if (onPressed != null) {
          onPressed();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}
