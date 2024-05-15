import 'package:flutter_assignment/features/quote/presentation/provider/state/quote_notifier.dart';
import 'package:flutter_assignment/features/quote/presentation/provider/state/quote_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quoteStateNotifier = AutoDisposeStateNotifierProvider<QuoteNotifier, QuoteState>(
        (ref) => QuoteNotifier()
);
