import 'package:flutter_assignment/models/quotes_model.dart';

abstract class QuoteDetailsRepository {
  Future<QuotesModel> getQuote(String quoteId);

}
