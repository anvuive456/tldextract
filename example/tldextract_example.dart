import 'package:tldextract/tldextract.dart';

void main() {
  String first = 'desmond.lim@tnt-design.com.sg';
  String second = 'desmond.lim@tnt-design.com';
  String third = 'desmond.lim@abc.com.sg';

  ///Not matched
  var notMatched = isMatchedDomain(first: first, rests: [second]);
  print(notMatched); //false
  var matched = isMatchedDomain(first: first, rests: [third]);
  print(matched); //true
}
