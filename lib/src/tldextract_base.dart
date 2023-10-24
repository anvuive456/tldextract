String getEmailDomain(String email) {
  assert(email.isNotEmpty, "Email must not empty");
  assert(_isValidEmail(email), "Email must be valid");

  String domainName =
      email.substring(email.indexOf('.', email.lastIndexOf('@')));
  return domainName;
}

bool isMatchedDomain({required String first, required List<String> rests}) {
  String firstDomain = getEmailDomain(first);
  List<String> restDomains = rests.map((e) => getEmailDomain(e)).toList();

  // print(firstDomain);
  // print(restDomains);
  return restDomains.every((element) => element == firstDomain);
}

bool isMatchedTopLevelDomain({required String first, required List<String> rests}){
  String firstDomain = getTopLevelDomain(first);
  List<String> restDomains = rests.map((e) => getTopLevelDomain(e)).toList();

  // print(firstDomain);
  // print(restDomains);
  return restDomains.every((element) => element == firstDomain);

}

String getTopLevelDomain(String email) {
  assert(email.isNotEmpty, "Email must not empty");
  assert(_isValidEmail(email), "Email must be valid");

  String domainName = email.substring(email.lastIndexOf('.'));
  return domainName;
}

bool _isValidEmail(String email) => RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(email);