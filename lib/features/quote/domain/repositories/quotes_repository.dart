import 'package:flutter_assignment/models/quotes_model.dart';

abstract class QuotesRepository {
  Future<List<QuotesModel>> getListOfQuotes();

}
