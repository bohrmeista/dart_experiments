@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';
import 'package:angular_bloc/app_component.dart';
import 'package:angular_bloc/app_component.template.dart' as ng;
import 'package:pageloader/html.dart';
import 'app_po.dart';

void main() {
  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory);
  NgTestFixture<AppComponent> fixture;
  AppPO appPO;

  setUp(() async {
    fixture = await testBed.create();
    final context =
      HtmlPageLoaderElement.createFromElement(fixture.rootElement);
      appPO = AppPO.create(context);
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('My First AngularDart App'));
  });

  test('stream response', () async {
    appPO.click();
    await Future.delayed(const Duration(seconds: 2));
    expect(fixture.text, contains('dingsbums'));
  });
}
