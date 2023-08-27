import 'package:geekmespeak/layout/page_frame.dart';
import 'package:geekmespeak/pages/contact_us_page.dart';
import 'package:geekmespeak/pages/not_found_page.dart';
import 'package:geekmespeak/pages/panda_page.dart';
import 'package:geekmespeak/pages/privacy_page.dart';
import 'package:geekmespeak/pages/roadster_page.dart';
import 'package:geekmespeak/pages/welcome_page.dart';
import 'package:geekmespeak/pages/what_cents_page.dart';
import 'package:jaspr/components.dart';
import 'package:jaspr/html.dart';
import 'package:jaspr_router/jaspr_router.dart';

final routes = [
  WelcomePage.route,
  RoasterPage.route,
  PandaPage.route,
  WhatCentsPage.route,
  ContactUsPage.route,
  PrivacyPolicyPage.route,
];

class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Router(
      routes: [
        ShellRoute(
          routes: routes,
          builder: (BuildContext context, RouteState state, Component child) {
            return PageFrame(child: child);
          },
        ),
      ],
      errorBuilder: NotFoundPage.builder,
    );
  }
}
