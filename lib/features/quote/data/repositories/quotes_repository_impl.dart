import 'package:flutter_assignment/models/quotes_model.dart';
import '../../domain/repositories/quotes_repository.dart';
import '../datasource/remote/quotes_remote_datasource.dart';

class QuotesRepositoryImpl extends QuotesRepository {
  final QuotesRemoteDataSource quotesDataSource;

  QuotesRepositoryImpl(
      {required this.quotesDataSource});


  @override
  Future<List<QuotesModel>> getListOfQuotes() async{
    return quotesDataSource.getListOfQuotes();
  }

}
