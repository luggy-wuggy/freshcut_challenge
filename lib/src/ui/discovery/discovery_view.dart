import 'package:flutter/material.dart';

class DiscoveryView extends StatelessWidget {
  const DiscoveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Discovery',
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
