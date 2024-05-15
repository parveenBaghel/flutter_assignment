import '../../../../../models/quotes_model.dart';

enum QuoteDetailsConcreteState {
  initial,
  loading,
  loaded,
  failure,
}

class QuoteDetailsState {
  final QuotesModel quote;
  final bool hasData;
  final String message;
  final bool isLoading;
  final QuoteDetailsConcreteState state;

  const QuoteDetailsState(
      {this.quote = const QuotesModel(),
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.state = QuoteDetailsConcreteState.initial});

  const QuoteDetailsState.initial(
      {this.quote = const QuotesModel(),
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.state = QuoteDetailsConcreteState.initial});

  QuoteDetailsState copyWith(
      {QuotesModel? quotes,
      bool? hasData,
      String? message,
      QuoteDetailsConcreteState? state,
      bool? isLoading}) {
    return QuoteDetailsState(
        quote: quotes ?? this.quote,
        message: message ?? this.message,
        hasData: hasData ?? this.hasData,
        state: state ?? this.state,
        isLoading: isLoading ?? this.isLoading);
  }
}
