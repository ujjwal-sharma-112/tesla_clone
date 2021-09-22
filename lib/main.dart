import 'package:flutter/material.dart';

import 'Components/home_screen.dart';

void main() => runApp(const TeslaClone());

class TeslaClone extends StatelessWidget {
  const TeslaClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
