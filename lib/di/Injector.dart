
import 'package:get_it/get_it.dart';
import '../features/quote/data/datasource/remote/quotes_remote_data_source.dart';
import '../features/quote/data/datasource/remote/quotes_remote_datasource.dart';
import '../features/quote/data/repositories/quotes_repository_impl.dart';
import '../features/quote/domain/repositories/quotes_repository.dart';
import '../features/quote/domain/use_cases/get_quotes_use_case.dart';
import '../features/quote_details/data/datasource/remote/quotes_details_remote_data_source.dart';
import '../features/quote_details/data/datasource/remote/quotes_details_remote_datasource.dart';
import '../features/quote_details/data/repositories/quote_details_repository_impl.dart';
import '../features/quote_details/domain/repositories/quotes_details_repository.dart';
import '../features/quote_details/domain/use_cases/get_quotes_details_use_case.dart';
import '../network/dio_network_service.dart';
import '../network/network_service.dart';

final injector = GetIt.instance;

Future<void> initSingletons() async {
  //Services
  injector.registerLazySingleton<NetworkService>(() => DioNetworkService());

}

void provideDataSources() {

  //Quotes
  injector.registerFactory<QuotesRemoteDataSource>(() => QuotesRemoteDataSourceImpl(networkService: injector.get<NetworkService>()));
  injector.registerFactory<QuoteDetailsRemoteDataSource>(() => QuoteDetailsRemoteDataSourceImpl(networkService: injector.get<NetworkService>()));
}

void provideRepositories() {

  //Quotes
  injector.registerFactory<QuotesRepository>(() => QuotesRepositoryImpl(quotesDataSource: injector.get<QuotesRemoteDataSource>()));
  injector.registerFactory<QuoteDetailsRepository>(() => QuoteDetailsRepositoryImpl(quotesDataSource: injector.get<QuoteDetailsRemoteDataSource>()));

}

void provideUseCases() {

  //Quotes
  injector.registerFactory<GetQuotesUseCase>(() => GetQuotesUseCase(quotesRepository: injector.get<QuotesRepository>(),));
  injector.registerFactory<GetQuoteDetailsUseCase>(() => GetQuoteDetailsUseCase(quoteRepository: injector.get<QuoteDetailsRepository>(),));

}

