

class Quote {
  Quote({
    required this.author,
    required this.quote,
  });

  final String author;
  final String quote;

  factory Quote.fromJson(Map<String, dynamic> data) {
    return Quote(
      author: data['author'],
      quote: data['quote'],
    );
  }

  // Quote copyWith({
  //   String? author,
  //   String? quote,
  // }) {
  //   return Quote(
  //     author: author ?? this.author,
  //     quote: quote ?? this.quote,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'author': author,
  //     'quote': quote,
  //   };
  // }

  // factory Quote.fromMap(Map<String, dynamic> map) {
  //   return Quote(
  //     author: map['author'] as String,
  //     quote: map['quote'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Quote.fromJson(String source) => Quote.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() => 'Quote(author: $author, quote: $quote)';

  // @override
  // bool operator ==(covariant Quote other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.author == author &&
  //     other.quote == quote;
  // }

  // @override
  // int get hashCode => author.hashCode ^ quote.hashCode;
}
