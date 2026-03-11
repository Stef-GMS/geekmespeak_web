/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

// Server-specific Jaspr import.
import 'package:geekmespeak/app/app.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  runApp(
    Document(
      lang: 'en',
      title: 'Geek Me Speak LLC',
      head: [
        link(rel: "icon", href: "/favicon.ico"),
        link(rel: "stylesheet", href: "/reboot.css"),
        link(rel: "stylesheet", href: "/styles.css"),
        link(rel: "shortcut icon", type: "image/x-icon", href: "favicon.ico"),
        link(rel: "me", href: "https://fluttercommunity.social/@geekmespeak"),
        script(
          src: 'https://use.fontawesome.com/releases/v5.15.4/js/solid.js',
          attributes: {
            'integrity': 'sha384-/BxOvRagtVDn9dJ+JGCtcofNXgQO/CCCVKdMfL115s3gOgQxWaX/tSq5V8dRgsbc',
            'crossorigin': 'anonymous',
          },
          defer: true,
        ),
        script(
          src: 'https://use.fontawesome.com/releases/v5.15.4/js/fontawesome.js',
          attributes: {
            'integrity': 'sha384-dPBGbj4Uoy1OOpM4+aRGfAOc0W37JkROT+3uynUgTHZCHZNMHfGXsmmvYTffZjYO',
            'crossorigin': 'anonymous',
          },
          defer: true,
        ),
      ],
      body: App(),
    ),
  );
}
