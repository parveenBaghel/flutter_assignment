
import 'package:flutter_assignment/models/quotes_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../di/Injector.dart';
import '../../../domain/use_cases/get_quotes_details_use_case.dart';
import 'quote_details_state.dart';

class QuoteDetailsNotifier extends StateNotifier<QuoteDetailsState> {
  final GetQuoteDetailsUseCase _getQuotesUseCase = injector.get<GetQuoteDetailsUseCase>();

  QuoteDetailsNotifier() : super(const QuoteDetailsState(quote: QuotesModel()));

  bool get isFetching => state.state != QuoteDetailsConcreteState.loading;

  Future<void> getQuote(String quoteID) async {
    if (isFetching) {
      state = state.copyWith(
        state: QuoteDetailsConcreteState.loading,
        isLoading: true,
      );
      final response = await _getQuotesUseCase.execute(quoteID);
      updateStateForQuoteDetailsResponse(response);
    }
  }

  void updateStateForQuoteDetailsResponse(QuotesModel response) {
    if (response != null) {
      state = state.copyWith(
        state: QuoteDetailsConcreteState.loaded,
        quotes: response,
        hasData: true,
        isLoading: false,
        message: '',
      );
    } else {
      state = state.copyWith(
          state: QuoteDetailsConcreteState.failure,
          message: "error in api",
          hasData: false,
          isLoading: false);
    }
  }

  void resetState() {
    state = const QuoteDetailsState.initial(quote: QuotesModel());
  }
}
