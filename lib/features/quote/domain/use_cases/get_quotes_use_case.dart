
import 'package:flutter_assignment/models/quotes_model.dart';

import '../repositories/quotes_repository.dart';

class GetQuotesUseCase {
  final QuotesRepository quotesRepository;

  GetQuotesUseCase({required this.quotesRepository});

  Future<List<QuotesModel>> execute() async {
    return quotesRepository.getListOfQuotes();
  }
}
