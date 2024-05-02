import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidi_io/common/shared/colors.dart';

class MasjidPage extends HookConsumerWidget {
  static const String route = "/masjid/:id";

  const MasjidPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
