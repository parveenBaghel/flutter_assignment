import 'package:flutter_assignment/models/quotes_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../di/Injector.dart';
import '../../../domain/use_cases/get_quotes_use_case.dart';
import 'quote_state.dart';

class QuoteNotifier extends StateNotifier<QuoteState> {
  final GetQuotesUseCase _getQuotesUseCase = injector.get<GetQuotesUseCase>();

  QuoteNotifier() : super(const QuoteState(listOfQuote: []));

  bool get isFetching => state.state != QuoteConcreteState.loading;

  Future<void> getListOfQuotes() async {
    if (isFetching) {
      state = state.copyWith(
        state: QuoteConcreteState.loading,
        isLoading: true,
      );
      final response = await _getQuotesUseCase.execute();
      updateStateFromMovieResponse(response);
    }
  }

  void updateStateFromMovieResponse(List<QuotesModel> response) {
    if (response.isNotEmpty) {
      state = state.copyWith(
        state: QuoteConcreteState.loaded,
        quotes: response,
        hasData: true,
        isLoading: false,
        message: '',
      );
    } else {
      state = state.copyWith(
          state: QuoteConcreteState.failure,
          message: "error in api",
          hasData: false,
          isLoading: false);
    }
  }

  void resetState() {
    state = const QuoteState.initial(listOfQuote: []);
  }
}
