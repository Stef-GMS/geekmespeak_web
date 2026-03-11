import 'package:geekmespeak/layout/product_layout.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class PandaPage extends StatelessComponent {
  const PandaPage._();

  static final path = '/unbearably-adorable-panda-stickers';

  static final route = Route(
    path: path,
    title: 'Unbearably Adorable Panda Stickers',
    builder: (context, state) => PandaPage._(),
  );

  @override
  Component build(BuildContext context) {
    return ProductLayout(
      image: '/images/unbearably-adorable.jpg',
      appStoreUrl: 'https://itunes.apple.com/us/app/bearly-adorable-stickers/id1330877612',
      // playStoreUrl: '', // FIXME: add play store url
      children: [
        .text(
          'Add some “panda-monium” to your iMessage conversations with '
          'these “unbearably adorable” panda stickers.',
        ),
        br(),
        br(),
        .text(
          'Do you have suggestions for new speech bubbles? Submit '
          'suggestions via the Contact Us link.',
        ),
      ],
    );
  }
}
