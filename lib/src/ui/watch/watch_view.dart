import 'package:flutter/material.dart';

class WatchView extends StatelessWidget {
  const WatchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Watch',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
