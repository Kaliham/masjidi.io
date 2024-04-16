import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidi_io/app/masjid/widgets/navbar/pods/navpod.dart';
import 'package:masjidi_io/common/shared/colors.dart';
import 'package:masjidi_io/common/shared/screen.dart';
import 'package:masjidi_io/icons/masji_icon_icons.dart';

class Navbar extends HookConsumerWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: MasjidiTheme.current.backgroundAccentColor,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildLogo(context, ref), buildNavbarItems(context, ref)],
      ),
    );
  }

  Widget buildLogo(BuildContext context, WidgetRef ref) {
    return const MasjidiLogo();
  }

  Widget buildNavbarItems(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width <=
          CommonScreenData.kMobileBreakpoint) {
        return buildMobileNavBar(context, ref);
      }
      return buildDesktopNavBar(context, ref);
    });
  }

  Widget buildDesktopNavBar(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          NavItem(title: 'Home'),
          SizedBox(width: 20),
          NavItem(title: 'About'),
          SizedBox(width: 20),
          NavItem(title: 'Contact'),
          SizedBox(width: 20),
          NavItem(title: 'Contact'),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  static Widget showMobileNavBar(
      BuildContext context, WidgetRef ref, String title) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          NavItem(title: 'Home'),
          SizedBox(width: 20),
          NavItem(title: 'About'),
          SizedBox(width: 20),
          NavItem(title: 'Contact'),
          SizedBox(width: 20),
          NavItem(title: 'Contact'),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  Widget buildMobileNavBar(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(navPodProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              notifier.toggleNav();
            },
            icon: Icon(
              Icons.menu,
              color: MasjidiTheme.current.textAccentColor,
            ),
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          buildNavItem(context, ref, 'Home'),
          const SizedBox(width: 20),
          buildNavItem(context, ref, 'About'),
          const SizedBox(width: 20),
          buildNavItem(context, ref, 'Contact'),
          const SizedBox(width: 20),
          buildNavItem(context, ref, 'Contact'),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class MasjidiLogo extends StatelessWidget {
  const MasjidiLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        MasjiIcon.logo,
        color: MasjidiTheme.current.primaryAccentColor,
        size: 60,
      ),
    );
  }
}

class NavItem extends HookConsumerWidget {
  final String title;
  final Function()? onTap;

  const NavItem({super.key, required this.title, this.onTap});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    const bool isSelected = true;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected
                ? MasjidiTheme.current.textAccentColor
                : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Text(
          s,
          style: GoogleFonts.robotoMono(
            fontWeight: FontWeight.w600,
            color: isSelected
                ? MasjidiTheme.current.textAccentColor
                : MasjidiTheme.current.textColor,
          ),
        ),
      ),
    );
  }
}
