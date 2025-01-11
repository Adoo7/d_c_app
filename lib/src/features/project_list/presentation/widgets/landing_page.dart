import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/project_list/presentation/pages/project_list_view.dart';
import 'package:d_c_app/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // Create a PageController to control the PageView
  final PageController _pageController = PageController();

  // Track the current index of the bottom navigation bar
  int _currentIndex = 0;

  // List of pages to display
  final List<Map<String, dynamic>> _pages = [];

  @override
  void initState() {
    super.initState();

    // Initialize pages with parameter passed from HomeScreen widget
    _pages.add({
      'Name': 'Collection',
      'Page': ProjectListView(type: ProjectViewType.collect),
      'Icon': Icons.work
    });
    _pages.add({
      'Name': 'Review',
      'Page': ProjectListView(type: ProjectViewType.review),
      'Icon': Icons.restart_alt
    });
    _pages.add({
      'Name': 'Quality',
      'Page': ProjectListView(type: ProjectViewType.quality),
      'Icon': Icons.filter_alt
    });
    _pages.add({
      'Name': 'Settings',
      'Page': SettingsView(controller: sl()),
      'Icon': Icons.settings
    });
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
            .map((page) => page['Page'] as Widget)
            .toList(), // Update the bottom nav when page changes
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 200,
        height: 80,
        child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: _pages
                .map(
                  (e) => Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () => _onBottomNavTapped(_pages.indexOf(e)),
                      child: NavWidget(
                        page: e,
                        selected: _currentIndex == _pages.indexOf(e),
                      ),
                    ),
                  ),
                )
                .toList()));
  }
}

class NavWidget extends StatelessWidget {
  const NavWidget({super.key, required this.page, this.selected = false});

  final Map<String, dynamic> page;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      constraints: BoxConstraints(maxWidth: 120, minHeight: 80),
      decoration: BoxDecoration(
        gradient: selected
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor.withBlue(100)
                  ])
            : null,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(page['Icon'],
              size: selected ? 32 : 24,
              color: selected
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Theme.of(context).primaryColor),
          SizedBox(height: 8),
          Text(
            page['Name'] as String,
            style: selected
                ? Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).scaffoldBackgroundColor)
                : Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).primaryColor),
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
