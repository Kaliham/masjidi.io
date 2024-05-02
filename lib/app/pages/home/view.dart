import 'package:flutter/material.dart';
import 'package:masjidi_io/common/shared/colors.dart';

class HomePage extends StatelessWidget {
  static const route = '/';
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
                image: AssetImage('assets/backgrounds/1.png'),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(color: MasjidiTheme.current.backgroundColor),
        ),
      ],
    );
  }
}
