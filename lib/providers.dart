// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nomeProvider = Provider.autoDispose((ref){
  print('Provider, construiu o nosso nomeProvider');
   return 'Douglas Carteri Bordignon';
});

final cursoProvider = Provider.autoDispose((ref){
    print('Provider, construiu o nosso cursoProvider');

    ref.onAddListener(() {
      print('Curso novo listener');
    });

    ref.onDispose(() { 
      print('Curso Provider descartado');
    });

    ref.onRemoveListener(() {
      print('Curso listener removido');
    });


   return 'Engenharia de Software';
});

/// com code generator
// @riverpod
// String curso1Provider(CursoProviderRef ref) => 'Engenharia de Software';

/// estrutura de estado (notfier) sem code generator

class Estado {
  String nome;
  Estado({
    required this.nome,
  });
}


class EstadoVM extends AutoDisposeNotifier<Estado> {

  @override
  Estado build() => Estado(nome: 'Douglas Carteri Bordignon',);

  void atualizarEstado(String nome) {
    state = Estado(nome: nome);
  }

}

final estadoProvider = AutoDisposeNotifierProvider<EstadoVM, Estado>(()=> EstadoVM());