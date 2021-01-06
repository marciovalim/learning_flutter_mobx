import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginTextField extends StatelessWidget {
  final String label;
  final String Function() errorText;
  final Function(String) onChanged;

  const LoginTextField({
    Key key,
    @required this.label,
    @required this.errorText,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          errorText: errorText == null ? null : errorText.call(),
        ),
      );
    });
  }
}
