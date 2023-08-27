import 'package:jaspr/html.dart';
import 'package:jaspr_router/jaspr_router.dart';

class ContactUsPage extends StatelessComponent {
  const ContactUsPage._();

  static final route = Route(
    path: '/contact-us',
    title: 'Contact Us',
    builder: (context, state) => ContactUsPage._(),
  );

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // yield p([
    //   text('via '),
    //   a(
    //     href: 'https://www.facebook.com/pg/GeekMeSpeak',
    //     target: Target.blank,
    //     [text('Facebook')],
    //   ),
    // ]);
    yield p([
      text('via '),
      a(
        href: 'https://twitter.com/GeekMeSpeakHelp',
        target: Target.blank,
        [text('Twitter')],
      ),
    ]);
  }
}
