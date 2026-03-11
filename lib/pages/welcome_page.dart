import 'package:geekmespeak/components/column.dart';
import 'package:geekmespeak/pages/panda_page.dart';
import 'package:geekmespeak/pages/roadster_page.dart';
import 'package:geekmespeak/pages/what_cents_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class WelcomePage extends StatelessComponent {
  const WelcomePage({super.key});

  static final path = '/';

  static final route = Route(
    path: '/',
    title: 'Welcome',
    builder: (context, state) => WelcomePage(),
  );

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      Component.text(
        'Thanks for stopping by! Click on each image to '
        'learn more about each of our mobile apps.',
      ),
      div(
        id: 'welcome-items',
        [
          _WelcomeItem(
            image: '/images/roadster-in-space.jpg',
            route: RoasterPage.route,
          ),
          _WelcomeItem(
            image: '/images/unbearably-adorable.jpg',
            route: PandaPage.route,
          ),
          _WelcomeItem(
            image: '/images/what-makes-cents.jpg',
            route: WhatCentsPage.route,
          ),
        ],
      ),
    ]);
  }
}

class _WelcomeItem extends StatefulComponent {
  const _WelcomeItem({
    required this.image,
    required this.route,
  });

  final String image;
  final Route route;

  @override
  State<_WelcomeItem> createState() => _WelcomeItemState();
}

class _WelcomeItemState extends State<_WelcomeItem> {
  @override
  Component build(BuildContext context) {
    Unit.em(1);
    return div(
      classes: 'welcome-item',
      [
        a(
          href: component.route.path,
          events: {
            'click': (event) {
              Router.of(context).push(component.route.path);
            },
          },
          [
            Column(
              children: [
                img(
                  src: component.image,
                  width: 200,
                  height: 200,
                ),
                .text(component.route.title!),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
