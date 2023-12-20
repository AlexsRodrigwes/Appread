import 'package:appread/database/entidades/livro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Controlelivro {
  CollectionReference _livros = FirebaseFirestore.instance.collection('livro');

  inserirLivro (Livro livro) async {
    await _livros.doc(livro.id).set(
      {
        'titulo': livro.titulo,
        'autor': livro.autor,
        'paginas': livro.paginas,
        'foto': livro.foto,
        'citacao': livro.citacao,
        'genero': livro.genero,
        'status': livro.status,
      }
    );

  }
  buscarLivro (String id) async {
    DocumentSnapshot doc = await _livros.doc(id).get();
    return Livro(
      id: doc.id,
      titulo: doc['titulo'],
      autor: doc['autor'],
      paginas: doc['paginas'],
      foto: doc['foto'],
      citacao: doc['citacao'],
      genero: doc['genero'],
      status: doc['status'],
    );
  }
  
  buscartodoslivros () async {
    QuerySnapshot querySnapshot = await _livros.get();
    List<Livro> livros = [];
    for (DocumentSnapshot doc in querySnapshot.docs) {
      livros.add(
        Livro(
          id: doc.id,
          titulo: doc['titulo'],
          autor: doc['autor'],
          paginas: doc['paginas'],
          foto: doc['foto'],
          citacao: doc['citacao'],
          genero: doc['genero'],
          status: doc['status'],
        )
      );
    }
    return livros;
  }
  atualizarlivro (Livro livro) async {
    await _livros.doc(livro.id).update(
      {
        'titulo': livro.titulo,
        'autor': livro.autor,
        'paginas': livro.paginas,
        'foto': livro.foto,
        'citacao': livro.citacao,
        'genero': livro.genero,
        'status': livro.status,
      }
    );
  }

  deletarlivro (String id) async {
    await _livros.doc(id).delete();
  }
}