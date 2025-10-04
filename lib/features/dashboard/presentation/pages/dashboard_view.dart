import 'package:flutter/material.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../home/presentation/pages/home_view.dart';

class DashboardView extends StatefulWidget {
  int index;
  DashboardView({super.key, this.index = 0});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final screens = [HomeView(), Placeholder(), Placeholder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: widget.index, children: screens),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 24),
          unselectedIconTheme: IconThemeData(size: 24),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: widget.index,
          onTap: (index) => setState(() {
            widget.index = index;
          }),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Padding(
                padding: const EdgeInsets.all(10),
                child: Assets.icons.homeInactive.svg(),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: Assets.icons.home.svg(),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Library',
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Assets.icons.library.svg(),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Assets.icons.libraryActive.svg(),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Market',
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Assets.icons.market.svg(),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Assets.icons.marketActive.svg(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
