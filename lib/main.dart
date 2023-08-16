import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_2_dw11/page1.dart';
import 'package:live_2_dw11/page2.dart';
import 'package:live_2_dw11/providers.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live 2 DW11',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyWidget(),
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nome = ref.watch(nomeProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nome),
            ),
            ElevatedButton(
              onPressed: () {
                ref.watch(nomeProvider);
              },
              child: const Text('Buscar Nome'),
            ),     
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page1');
              },
              child: const Text('Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
