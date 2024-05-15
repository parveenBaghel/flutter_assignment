import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../quote_details/presentation/views/qoute_detail_screen.dart';
import '../provider/quote_state_notifier.dart';
import '../provider/state/quote_state.dart';

class QuoteScreen extends ConsumerStatefulWidget {
  const QuoteScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends ConsumerState<QuoteScreen> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(quoteStateNotifier.notifier).getListOfQuotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(quoteStateNotifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes App"),
      ),
      body: notifier.state == QuoteConcreteState.loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: notifier.listOfQuote.length,
              itemBuilder: (ctx, i) {
                return ListTile(
                  tileColor: (i % 2 == 0)
                      ? Colors.cyan.shade200
                      : Colors.cyan.shade400,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => QuoteDetailScreen(
                                quoteId: notifier.listOfQuote[i].id)));
                  },
                  title: Text(
                    "${notifier.listOfQuote[i].content}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      text: "Author- ",
                      children: [
                        TextSpan(
                          text: notifier.listOfQuote[i].author,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
