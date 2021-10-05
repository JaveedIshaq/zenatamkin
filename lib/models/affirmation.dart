///
// ignore_for_file: sort_constructors_first

class Affirmation {
  ///
  Affirmation({
    required this.affirmation,
  });

  ///
  late final String affirmation;

  ///
  Affirmation.fromJson(Map<String, dynamic> json) {
    affirmation = json['affirmation'] as String;
  }
}
