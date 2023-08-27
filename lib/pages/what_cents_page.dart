import 'package:geekmespeak/layout/product_layout.dart';
import 'package:jaspr/html.dart';
import 'package:jaspr_router/jaspr_router.dart';

class WhatCentsPage extends StatelessComponent {
  const WhatCentsPage._();

  static final route = Route(
    path: '/what-makes-cents',
    title: 'What Makes Cents?',
    builder: (context, state) => WhatCentsPage._(),
  );

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ProductLayout(
      image: '/images/what-makes-cents.jpg',
      appStoreUrl: 'https://apps.apple.com/us/app/what-makes-cents/id1496867651',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.geekmespeak.whatmakescents',
      withFlutter: true,
      children: [
        p([
          text(
            'What Makes Cents? guides the user to know how intensely to ask or '
            'not ask for something or how intensely to say no to something.',
          ),
        ]),
        p([
          text(
            'After answering either ‘yes’ or ‘no’ to 10 questions, the '
            'resulting suggestion will range on how intensely to ask or '
            'not ask for something or how intensely to say no to something.',
          ),
        ]),
        p(
          styles: Styles.combine([
            Styles.box(
              border: Border.only(
                left: BorderSide(
                  color: Colors.darkSlateBlue,
                  width: Unit.em(0.5),
                  style: BorderStyle.solid,
                ),
              ),
              padding: EdgeInsets.only(left: Unit.em(1)),
            ),
            Styles.text(
              color: Colors.darkSlateBlue,
            ),
          ]),
          [
            i([
              text(
                'The purpose of this app is to be a guide. It is not intended '
                'to be a substitute for professional medical advice or treatment. '
                'Seek advice from a qualified health provider if you have any '
                'questions about a medical condition. Never disregard professional '
                'medical advice or delay in seeking it because of something you '
                'have read in this app.',
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
