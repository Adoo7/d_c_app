import 'package:d_c_app/src/project_feature/presentation/pages/sample_item_list_view.dart';
import 'package:d_c_app/src/settings/settings_controller.dart';
import 'package:d_c_app/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final SettingsController settingsController;

  const TestPage({super.key, required this.settingsController});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // Create a PageController to control the PageView
  final PageController _pageController = PageController();

  // Track the current index of the bottom navigation bar
  int _currentIndex = 0;

  // List of pages to display
  final List<Map<String, Widget>> _pages = [];

  @override
  void initState() {
    super.initState();

    // Initialize pages with parameter passed from HomeScreen widget
    _pages.add({'Sample': SampleItemListView()});
    _pages
        .add({'Settings': SettingsView(controller: widget.settingsController)});
  }

  // Method to change the page when the bottom nav item is tapped
  void _onBottomNavTapped(int index) {
    // Set the page in the PageView
    _pageController.jumpToPage(index);

    // Update the selected index
    setState(() {
      _currentIndex = index;
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages
            .map((page) => page.values.first)
            .toList(), // Update the bottom nav when page changes
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onBottomNavTapped,
          items: _pages
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: e.keys.first))
              .toList()),
    );
  }
}
