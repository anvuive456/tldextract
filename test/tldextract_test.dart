import 'package:tldextract/tldextract.dart';
import 'package:test/test.dart';

void main() {
  String mainEmail = 'abc@tisoha.vn';
  List<String> matchedDomains = [
    'giao@ketoan.tisoha.vn',
    'av@tisoha.vn',
  ];

  List<String> notMatchedDomains = [
    'giao@ketoan.tisoha',
    'giao@ketoan.com',
  ];

  group('Test local domain case', () {
    setUp(() {});

    test('Test not matched', () {
      expect(
          isMatchedDomain(first: mainEmail, rests: notMatchedDomains), isFalse);
    });

    test('Test matched', () {
      expect(isMatchedDomain(first: mainEmail, rests: matchedDomains), isTrue);
    });
  });

  group('Test top level domain only', () {
    setUp(() {});

    test('Test not matched', () {
      expect(
          isMatchedTopLevelDomain(first: mainEmail, rests: notMatchedDomains),
          isFalse);
    });

    test('Test matched', () {
      expect(isMatchedTopLevelDomain(first: mainEmail, rests: matchedDomains),
          isTrue);
    });
  });
}
