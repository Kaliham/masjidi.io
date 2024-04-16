import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidi_io/app/masjid/widgets/navbar/pods/navpod.dart';
import 'package:masjidi_io/app/masjid/widgets/navbar/view.dart';
import 'package:masjidi_io/common/shared/colors.dart';

class MasjidPage extends HookConsumerWidget {
  const MasjidPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(navPodProvider);
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Navbar(),
            provider.isOpen
                ? Expanded(child: Column())
                : Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.bottomCenter,
                                fit: BoxFit.cover,
                                image: const AssetImage(
                                    'assets/backgrounds/1.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                              color: MasjidiTheme.current.backgroundColor),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
