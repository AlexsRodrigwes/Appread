
import 'package:appread/telas/inicial.dart';
import 'package:appread/telas/bemvindo.dart';
import 'package:appread/telas/perfil.dart';
import 'package:appread/telas/pesquisa.dart';
import 'package:appread/telas/listaleituras.dart';
import 'package:appread/telas/meuslivros.dart';
import 'package:appread/telas/entrar.dart';
import 'package:appread/telas/resumoano.dart';
import 'package:appread/telas/lendo.dart';

final rotas = {
  '/bemvindo': (context) => Bemvindo(),
  '/': (context) => Inicial(),
  '/perfil': (context) => Perfil(),
  '/pesquisa': (context) => Pesquisa(),
  '/listaleituras': (context) => Listasleitura(),
  '/meuslivros': (context) => Meuslivros(),
  '/entrar': (context) => Entrar(),
  '/resumoano': (context) => Resumoano(),
  '/lendo': (context) => Lendo(),
};
