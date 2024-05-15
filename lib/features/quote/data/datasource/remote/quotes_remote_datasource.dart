
import 'package:flutter_assignment/models/quotes_model.dart';

abstract class QuotesRemoteDataSource {
  Future<List<QuotesModel>> getListOfQuotes();

}
