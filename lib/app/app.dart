import 'package:geekmespeak/layout/page_frame.dart';
import 'package:geekmespeak/pages/contact_us_page.dart';
import 'package:geekmespeak/pages/not_found_page.dart';
import 'package:geekmespeak/pages/panda_page.dart';
import 'package:geekmespeak/pages/privacy_page.dart';
import 'package:geekmespeak/pages/roadster_page.dart';
import 'package:geekmespeak/pages/welcome_page.dart';
import 'package:geekmespeak/pages/what_cents_page.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';
import 'package:jaspr_router/jaspr_router.dart';

final routes = <String, Route>{
  WelcomePage.path: WelcomePage.route,
  RoasterPage.path: RoasterPage.route,
  PandaPage.path: PandaPage.route,
  WhatCentsPage.path: WhatCentsPage.route,
  ContactUsPage.path: ContactUsPage.route,
  PrivacyPolicyPage.path: PrivacyPolicyPage.route,
};

class App extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        ShellRoute(
          routes: routes.values.toList(),
          builder:
              (
                BuildContext context,
                RouteState state,
                Component child,
              ) {
                return PageFrame(child: child);
              },
        ),
      ],
      errorBuilder: NotFoundPage.builder,
    );
  }
}
