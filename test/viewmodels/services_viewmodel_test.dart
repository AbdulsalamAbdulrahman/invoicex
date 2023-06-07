import 'package:flutter_test/flutter_test.dart';
import 'package:invoicex/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ServicesViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
