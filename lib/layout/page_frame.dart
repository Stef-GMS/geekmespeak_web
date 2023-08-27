import 'dart:html';

import 'package:geekmespeak/layout/top_menu.dart';
import 'package:jaspr/html.dart';
import 'package:jaspr_router/jaspr_router.dart';

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
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: ['page'],
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
          Text('Copyright © Geek Me Speak LLC 2023'),
        ]),
      ],
    );
  }
}
