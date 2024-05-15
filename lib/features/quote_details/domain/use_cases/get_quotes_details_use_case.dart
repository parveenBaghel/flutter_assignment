
import 'package:flutter_assignment/models/quotes_model.dart';

import '../repositories/quotes_details_repository.dart';

class GetQuoteDetailsUseCase {
  final QuoteDetailsRepository quoteRepository;

  GetQuoteDetailsUseCase({required this.quoteRepository});

  Future<QuotesModel> execute(String quoteId) async {
    return quoteRepository.getQuote(quoteId);
  }
}
