import 'package:example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:np_address/np_address.dart';

void main() {
  testWidgets('NpAddressApp renders address picker demo',
      (WidgetTester tester) async {
    await tester.pumpWidget(const NpAddressApp());
    await tester.pumpAndSettle();

    expect(find.byType(NpAddressPicker), findsOneWidget);
    expect(find.text('np_address'), findsOneWidget);
  });
}
