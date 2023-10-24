import 'package:tldextract/tldextract.dart';
import 'package:test/test.dart';

void main() {
  group('Test all case', () {
    // final awesome = Awesome();

    String first = 'desmond.lim@tnt-design.com.sg';
    String second = 'desmond.lim@tnt-design.com';
    String third = 'desmond.lim@abc.com.sg';

    setUp(() {
      // Additional setup goes here.
    });

    test('Test not matched', () {
      expect(isMatchedDomain(first: first, rests: [second]), isFalse);
    });

    test('Test matched', () {
      expect(isMatchedDomain(first: first, rests: [third]), isTrue);
    });
  });
}
