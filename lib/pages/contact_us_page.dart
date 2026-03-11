import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class ContactUsPage extends StatelessComponent {
  const ContactUsPage._();

  static final path = '/contact-us';

  static final route = Route(
    path: path,
    title: 'Contact Us',
    builder: (context, state) => ContactUsPage._(),
  );

  @override
  Component build(BuildContext context) {
    // yield p([
    //   text('via '),
    //   a(
    //     href: 'https://www.facebook.com/pg/GeekMeSpeak',
    //     target: Target.blank,
    //     [text('Facebook')],
    //   ),
    // ]);
    return Component.fragment([
      p([
        .text('via '),
        a(
          href: 'https://bsky.app/profile/geekmespeak.com',
          target: Target.blank,
          [.text('Bluesky')],
        ),
      ]),
      p([
        .text('via '),
        a(
          href: 'https://fluttercommunity.social/@GeekMeSpeak',
          target: Target.blank,
          [.text('Mastodon')],
        ),
      ]),
      p([
        .text('via '),
        a(
          href: 'https://twitter.com/GeekMeSpeakHelp',
          target: Target.blank,
          [.text('Twitter/X')],
        ),
      ]),
    ]);
  }
}
