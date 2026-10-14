// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:widget_practise/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Flutter Foundations'), findsOneWidget);
    expect(find.text('Core Layout Products'), findsOneWidget);
    expect(
      find.text('See how Flutter arranges products on screen.'),
      findsOneWidget,
    );

    await tester.tap(find.text('Continue Learning'));
    await tester.pump();

    expect(find.text('You are ready!'), findsOneWidget);
  });
}
