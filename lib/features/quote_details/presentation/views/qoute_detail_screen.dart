import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/quote_details/presentation/provider/quote_details_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/state/quote_details_state.dart';

class QuoteDetailScreen extends ConsumerStatefulWidget {
  const QuoteDetailScreen({super.key, this.quoteId});
  final String? quoteId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuoteDetailState();
}

class _QuoteDetailState extends ConsumerState<QuoteDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref
          .read(quoteDetailsStateNotifier.notifier)
          .getQuote(widget.quoteId ?? "");
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(quoteDetailsStateNotifier);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quotes Detail"),
        ),
        body: notifier.state == QuoteDetailsConcreteState.loading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Date Created: "),
                        Text("${notifier.quote.dateAdded}")
                      ],
                    ),
                    Row(
                      children: [
                        Text("Title: "),
                        Text("${notifier.quote.content}"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Author: "),
                        Text("${notifier.quote.author}")
                      ],
                    )
                  ],
                ),
              ));
  }
}
