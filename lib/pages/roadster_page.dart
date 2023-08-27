import 'package:geekmespeak/layout/product_layout.dart';
import 'package:jaspr/html.dart';
import 'package:jaspr_router/jaspr_router.dart';

class RoasterPage extends StatelessComponent {
  const RoasterPage._();

  static final route = Route(
    path: '/roadster-in-space',
    title: 'Roadster in Space',
    builder: (context, state) => RoasterPage._(),
  );

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ProductLayout(
      image: '/images/roadster-in-space.jpg',
      appStoreUrl: 'https://itunes.apple.com/us/app/roadster-in-space/id1347372590',
      // playStoreUrl: '', // FIXME: add play store url
      children: [
        text(
          'Join the Space Monkey riding in his roadster through space. '
          'He needs your help in collecting bananas and not crashing '
          'into an alien spaceship.',
        ),
      ],
    );
  }
}
