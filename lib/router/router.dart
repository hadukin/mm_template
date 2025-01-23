import 'package:flutter/material.dart';
import 'package:mm_template/features/authorization/login_page.dart';
import 'package:mm_template/features/authorization/reset_password_page.dart';
import 'package:mm_template/features/catalog/catalog_page.dart';
import 'package:mm_template/features/profile/profile_page.dart';
import 'package:mm_template/router/router.dart';

export 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: ResetPasswordRoute.page,
        ),
        AutoRoute(
          keepHistory: false,
          page: TabsRootRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: TabCatalogRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRoute.page,
                ),
              ],
            ),
            AutoRoute(page: TabProfileRoute.page, children: [
              AutoRoute(
                initial: true,
                page: ProfileRoute.page,
              ),
            ]),
          ],
        ),
      ];
}

@RoutePage()
class TabCatalogPage extends AutoRouter {
  const TabCatalogPage({super.key});
}

@RoutePage()
class TabProfilePage extends AutoRouter {
  const TabProfilePage({super.key});
}

final _currentIndex = ValueNotifier<int>(0);

@RoutePage()
class TabsRootPage extends StatelessWidget {
  const TabsRootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        TabCatalogRoute(),
        TabProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            _currentIndex.value = index;
            if (_currentIndex.value == tabsRouter.activeIndex && tabsRouter.canNavigateBack) {
              tabsRouter.maybePopTop();
            } else {
              tabsRouter.setActiveIndex(index);
            }
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
