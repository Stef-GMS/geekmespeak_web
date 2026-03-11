import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Spacer extends StatelessComponent {
  const Spacer({
    super.key,
    this.width,
    this.height,
    this.children,
  });

  final Unit? width;
  final Unit? height;
  final List<Component>? children;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        width: width,
        height: height,
      ),
      children ?? const [],
    );
  }
}
