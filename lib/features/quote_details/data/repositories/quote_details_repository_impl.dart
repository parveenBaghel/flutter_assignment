import 'package:flutter_assignment/models/quotes_model.dart';
import '../../domain/repositories/quotes_details_repository.dart';
import '../datasource/remote/quotes_details_remote_datasource.dart';

class QuoteDetailsRepositoryImpl extends QuoteDetailsRepository {
  final QuoteDetailsRemoteDataSource quotesDataSource;

  QuoteDetailsRepositoryImpl(
      {required this.quotesDataSource});


  @override
  Future<QuotesModel> getQuote(String quoteId) async{
    return quotesDataSource.getQuote(quoteId);
  }

}
