import '../../../../../models/quotes_model.dart';

enum QuoteConcreteState {
  initial,
  loading,
  loaded,
  failure,
}

class QuoteState {
  final List<QuotesModel> listOfQuote;
  final bool hasData;
  final String message;
  final bool isLoading;
  final QuoteConcreteState state;

  const QuoteState(
      {this.listOfQuote = const [],
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.state = QuoteConcreteState.initial});

  const QuoteState.initial(
      {this.listOfQuote = const [],
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.state = QuoteConcreteState.initial});

  QuoteState copyWith(
      {List<QuotesModel>? quotes,
      bool? hasData,
      String? message,
      QuoteConcreteState? state,
      bool? isLoading}) {
    return QuoteState(
        listOfQuote: quotes ?? listOfQuote,
        message: message ?? this.message,
        hasData: hasData ?? this.hasData,
        state: state ?? this.state,
        isLoading: isLoading ?? this.isLoading);
  }
}
