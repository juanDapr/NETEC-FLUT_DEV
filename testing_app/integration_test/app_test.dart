import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_app/main.dart' as app;
void main() {
IntegrationTestWidgetsFlutterBinding.ensureInitialized();
testWidgets('end-to-end test', (WidgetTester tester) async {
app.main();
await tester.pumpAndSettle();

expect(find.text('0'), findsOneWidget);

await tester.tap(find.byIcon(Icons.add));
await tester.pumpAndSettle();

expect(find.text('1'), findsOneWidget);

await tester.tap(find.byIcon(Icons.remove));
await tester.pumpAndSettle();

expect(find.text('0'), findsOneWidget);
});
}