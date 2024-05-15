

import 'package:flutter_assignment/models/quotes_model.dart';

import '../../../../../network/network_service.dart';
import '../../../../../network/network_values.dart';
import 'quotes_details_remote_datasource.dart';



class QuoteDetailsRemoteDataSourceImpl extends QuoteDetailsRemoteDataSource {
  final NetworkService networkService;

  QuoteDetailsRemoteDataSourceImpl({required this.networkService});

  @override
  Future<QuotesModel> getQuote(String quoteId) async {
    QuotesModel quotes;
    final response =
        await networkService.get(EndPoints.qoute(quoteId));
    quotes = QuotesModel.fromJson(response.data);

    return quotes;
  }

}
