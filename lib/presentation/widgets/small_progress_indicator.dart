import 'package:flutter/material.dart';

class SmallProgressIndicator extends StatelessWidget {
  const SmallProgressIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 15,
        height: 15,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(Colors.white70),
        ),
      ),
    );
  }
}
