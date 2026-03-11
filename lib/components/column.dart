import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Column extends StatelessComponent {
  const Column({
    super.key,
    required this.children,
  });

  final List<Component> children;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
      ),
      children,
    );
  }
}
