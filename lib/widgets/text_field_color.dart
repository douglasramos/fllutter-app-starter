import 'package:flutter/material.dart';

/// The most feasible way to change the color of the label on top is wrapping
/// the text field in a local theme and change the primaryColor
/// the primary color Another alternative is:
/// https://stackoverflow.com/questions/56411599/ but handle focus could be
/// cumbersome
/// For instance, this change could be made through a decoration using
/// something like LabelStyle or HintStyle, but this approach has the flaw of
/// having side effects like also changing the color when the label/hint are
/// inside the text field. This is not good since we generally want different
/// colors for the label when the text field are focused (label on top) and not
/// focused (label inside)
class TextFieldColor extends StatelessWidget {
  final TextField child;
  final Color color;

  const TextFieldColor(
      {@required this.child, this.color = Colors.black, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          primaryColor: Colors.black,
          cursorColor: Colors.black,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
        child: child);
  }
}
