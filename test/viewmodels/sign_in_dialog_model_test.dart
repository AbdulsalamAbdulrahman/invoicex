import 'package:flutter_test/flutter_test.dart';
import 'package:invoicex/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SignInDialogModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
