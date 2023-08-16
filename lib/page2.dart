import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_2_dw11/providers.dart';

class Page2 extends ConsumerWidget {

  const Page2({ super.key });

   @override
   Widget build(BuildContext context, WidgetRef ref) {

    print(ref.watch(cursoProvider));
    

       return Scaffold(
           appBar: AppBar(title: const Text('Page 2'),),
           body: Center(
            child: Text('Page 2'),
           ),
       );
  }
}