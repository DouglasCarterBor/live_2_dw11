import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_2_dw11/providers.dart';

class Page1 extends ConsumerWidget {

  const Page1({ super.key });

   @override
   Widget build(BuildContext context, WidgetRef ref) {

     ref.watch(cursoProvider);
     final Estado(:nome) = ref.watch(estadoProvider);

       return Scaffold(
           appBar: AppBar(title: const Text('Page 1'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text(nome),
                 ElevatedButton(
                     onPressed: () {
                      Navigator.of(context).pushNamed('/page2');             
                     },
                     child: const Text('Page 2')
                 ),          
                  ElevatedButton(
                     onPressed: () {
                      ref.watch(estadoProvider.notifier).atualizarEstado('batata');     
                     },
                     child: const Text('Alterar o Estado')
                 ),
               ],
             ),
           )
       );
  }
}

