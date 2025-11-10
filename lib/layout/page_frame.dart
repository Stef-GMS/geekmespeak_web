import 'package:geekmespeak/layout/top_menu.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:web/web.dart';

class PageFrame extends StatefulComponent {
  const PageFrame({
    super.key,
    required this.child,
  });

  final Component child;

  @override
  State<PageFrame> createState() => _PageFrameState();
}

class _PageFrameState extends State<PageFrame> {
  String? _title;

  @override
  void initState() {
    super.initState();
    _updateTitle();
  }

  @override
  void didUpdateComponent(covariant PageFrame oldComponent) {
    super.didUpdateComponent(oldComponent);
    _updateTitle();
  }

  void _updateTitle() {
    _title = Router.of(context).matchList.title;

    if (_title case String title) {
      document.title = '$title :: Geek Me Speak LLC';
    }
  }

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'page',
      [
        img(
          id: 'top-banner',
          src: '/images/top_banner.png',
        ),
        TopMenu(),
        article([
          div(id: 'post-content', [
            if (_title case String title) //
              h1([text(title)]),
            component.child,
          ]),
        ]),
        footer([
          p(
            [
              text('Copyright © 2013-2025 Geek Me Speak LLC.  All rights reserved. '),
            ],
          ),
          a(href: 'https://jaspr.site', target: Target.blank, [
            // JasprBadge.light(), // Light background, dark icon and text
            // JasprBadge.dark(), // Dark background, light icon and text
            JasprBadge.lightTwoTone(), // Light background, blue icon, dark text
            // JasprBadge.darkTwoTone(), // Dark background, blue icon, light text
          ]),
        ]),
      ],
    );
  }
}
