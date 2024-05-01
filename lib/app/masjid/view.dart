import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidi_io/app/masjid/pages/home/view.dart';
import 'package:masjidi_io/app/masjid/widgets/navbar/pods/navpod.dart';
import 'package:masjidi_io/app/masjid/widgets/navbar/view.dart';
import 'package:masjidi_io/common/shared/screen.dart';

class MasjidPage extends HookConsumerWidget {
  const MasjidPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(navPodProvider);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Navbar(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (provider.isOpen && CommonScreenData.isMobile(context)) {
                  return const Expanded(child: Column());
                }
                return const Expanded(
                  child: HomeScreen(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
