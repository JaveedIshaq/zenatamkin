///
// ignore_for_file: sort_constructors_first

class Quote {
  ///
  Quote({
    required this.content,
    required this.author,
    required this.authorSlug,
    required this.length,
    required this.dateAdded,
    required this.dateModified,
  });

  ///
  late final String content;

  ///
  late final String author;

  ///
  late final String authorSlug;

  ///
  late final int length;

  ///
  late final String dateAdded;

  ///
  late final String dateModified;

  ///
  Quote.fromJson(Map<String, dynamic> json) {
    content = json['content'] as String;
    author = json['author'] as String;
    authorSlug = json['authorSlug'] as String;
    length = json['length'] as int;
    dateAdded = json['dateAdded'] as String;
    dateModified = json['dateModified'] as String;
  }
}
