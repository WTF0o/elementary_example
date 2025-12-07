import 'package:elementary_test/app/di_app.dart';
import 'package:elementary_test/presentation/screen/favorite/favorite_screen.dart';
import 'package:elementary_test/presentation/screen/favorite/favorite_wm.dart';
import 'package:elementary_test/presentation/screen/main/main_screen.dart';
import 'package:elementary_test/presentation/screen/main/main_wm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _sectionMainNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _sectionFavoriteNavigatorKey = GlobalKey<NavigatorState>();

@module
abstract class AppRouter {
  @singleton
  GoRouter get router => GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScaffoldWithNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _sectionMainNavigatorKey,
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => MainScreen((_) => getIt<MainWidgetModel>()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _sectionFavoriteNavigatorKey,
            routes: [
              GoRoute(
                path: '/favorite',
                builder: (context, state) => FavoriteScreen((_) => getIt<FavoriteWidgetModel>()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _currentIndex = widget.navigationShell.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.navigationShell),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Избранное'),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            widget.navigationShell.goBranch(index);
          });
        },
      ),
    );
  }
}
