// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_package_list/data/Result.dart';
import 'package:flutter_package_list/domain/AccountModel.dart';
import 'package:flutter_package_list/domain/GetAccountUseCase.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_simple_list/main.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'widget_test.mocks.dart';

GetIt getIt = GetIt.instance;

@GenerateMocks([GetAccountUseCase])
void main() {
  testWidgets('List test', (WidgetTester tester) async {
    // GIVEN user with 2 todo items
    final GetAccountUseCase useCase = MockGetAccountUseCase();
    getIt.registerSingleton(useCase);

    Result<AccountModel> future = Result.success(AccountModel(1, ["1", "2"]));
    when(useCase.execute()).thenAnswer((_) async => future);

    // WHEN user open the app
    await tester.pumpWidget(MyApp());
    await tester.pump();

    // THEN see the two items in the list
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
  });
}
