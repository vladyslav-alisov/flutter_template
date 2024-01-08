import 'package:isar/isar.dart';
part 'quote_local_entity.g.dart';

@collection
class QuoteLocalEntity {
  final Id quoteId = Isar.autoIncrement;
  final String author;
  final String quote;
  final DateTime createdAt;
  final String languageCode;

  QuoteLocalEntity({required this.author, required this.quote, required this.createdAt, required this.languageCode});
}
