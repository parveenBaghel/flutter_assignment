import 'package:flutter_assignment/features/quote_details/presentation/provider/state/quote_details_notifier.dart';
import 'package:flutter_assignment/features/quote_details/presentation/provider/state/quote_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quoteDetailsStateNotifier = AutoDisposeStateNotifierProvider<QuoteDetailsNotifier, QuoteDetailsState>(
        (ref) => QuoteDetailsNotifier()
);