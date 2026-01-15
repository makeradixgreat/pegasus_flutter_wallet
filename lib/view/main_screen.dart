import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pegasus_wallet/core/theme/theme.dart';
import 'package:pegasus_wallet/features/bottom_bar/bottom_bar_bloc.dart';
import 'package:pegasus_wallet/view/home/home_page.dart';
import 'package:pegasus_wallet/view/settings/settings_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late BottomBarBloc bottomBarBloc;

  @override
  void initState() {
    super.initState();
    bottomBarBloc = context.read<BottomBarBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarBloc, BottomBarState>(
      builder: (context, state) {
        final visibleTabs = _getVisibleTabs();
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              _getAppBarTitle(state.selectedTab),
              style: TextStyle(color: context.baseTitleColor),
            ),
          ),
          body: _getSelectedPage(state.selectedTab),
          bottomNavigationBar: Container(
            color: context.theme.bottomNavigationBarTheme.backgroundColor,
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 12.0,
                ),
                child: GNav(
                  selectedIndex: visibleTabs.indexOf(state.selectedTab),
                  onTabChange: (index) async {
                    final selected = visibleTabs[index];
                    bottomBarBloc.add(BottomBarChanged(selectedTab: selected));
                  },
                  backgroundColor:
                      context.theme.bottomNavigationBarTheme.backgroundColor ??
                      const Color(0xFF0F0F0F),
                  color: Colors.white70,
                  activeColor: context.baseTitleColor,
                  tabBackgroundColor: Colors.black26,
                  gap: 8.0,
                  padding: const EdgeInsets.all(12.0),
                  tabs: visibleTabs
                      .map((tab) => _buildTab(tab, state.selectedTab))
                      .toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Define the visible tabs based on feature toggles.
  List<SelectedTab> _getVisibleTabs() {
    return [SelectedTab.home, SelectedTab.settings];
  }

  /// Render the corresponding page based on the selected tab.
  Widget _getSelectedPage(SelectedTab selectedTab) {
    switch (selectedTab) {
      case SelectedTab.home:
        return const HomePage();
      case SelectedTab.settings:
        return const SettingsPage();
    }
  }

  /// TODO: Return localized title for each tab.
  String _getAppBarTitle(SelectedTab selectedTab) {
    switch (selectedTab) {
      case SelectedTab.home:
        return 'Home';
      case SelectedTab.settings:
        return 'Settings';
    }
  }

  /// Build a GButton for the given tab.
  GButton _buildTab(SelectedTab tab, SelectedTab currentTab) {
    final bool isActive = currentTab == tab;

    // Default tabs with material icons
    IconData icon;
    IconData outlinedIcon;

    switch (tab) {
      case SelectedTab.home:
        icon = Icons.home_rounded;
        outlinedIcon = Icons.home_outlined;
        break;
      case SelectedTab.settings:
        icon = Icons.settings;
        outlinedIcon = Icons.settings_outlined;
        break;
    }

    return GButton(icon: isActive ? icon : outlinedIcon);
  }
}
