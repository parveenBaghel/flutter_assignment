

import 'package:flutter_assignment/models/quotes_model.dart';

import '../../../../../network/network_service.dart';
import '../../../../../network/network_values.dart';
import 'quotes_remote_datasource.dart';



class QuotesRemoteDataSourceImpl extends QuotesRemoteDataSource {
  final NetworkService networkService;

  QuotesRemoteDataSourceImpl({required this.networkService});

  @override
  Future<List<QuotesModel>> getListOfQuotes() async {
    List<QuotesModel> quotes = [];
    final response =
        await networkService.get(EndPoints.quotes);
    response.data.forEach((e){
      quotes.add(QuotesModel.fromJson(e));
    });

    return quotes;
  }

}
