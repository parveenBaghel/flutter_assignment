
import 'package:flutter_assignment/models/quotes_model.dart';

abstract class QuoteDetailsRemoteDataSource {
  Future<QuotesModel> getQuote(String quoteId);

}
