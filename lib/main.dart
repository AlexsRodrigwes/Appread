import 'package:appread/componetes/detalhesLivro.dart';
import 'package:appread/componetes/rotateste.dart';
import 'package:appread/database/entidades/livro.dart';
import 'package:appread/database/firebase/controlelivro.dart';
import 'package:appread/firebase_options.dart';
import 'package:appread/telas/bemvindo.dart';
import 'package:appread/telas/perfil.dart';
import 'package:appread/telas/pesquisa.dart';
import 'package:appread/telas/inicial.dart';
import 'package:appread/telas/listaleituras.dart';
import 'package:appread/telas/meuslivros.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appread/componetes/buttons.dart';
import 'package:appread/componetes/entratext.dart';
import 'package:appread/componetes/cardlivro.dart';
import 'package:appread/telas/pesquisa.dart';
import 'package:appread/telas/entrar.dart';
import 'package:appread/telas/resumoano.dart';
import 'package:appread/telas/lendo.dart';
import 'package:appread/componetes/detalhesLivro.dart';
import 'package:appread/telas/bemvindo.dart';
import 'package:appread/componetes/rotas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   Livro novolivro
  = Livro(
      id: "livro3",
      titulo: "orgulho e preconceito",
      autor: "lucy",
      paginas: 250,
      foto: "foto",
      citacao: "laklfmkf",
      genero: "Ficção",
      status: "lido");

  // Controlelivro().inserirLivro(novolivro);

  // novolivro = await Controlelivro().buscarLivro("livro2");
  // print('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
  // print(novolivro);

  // List<Livro> livros = await Controlelivro().buscartodoslivros();
  // print('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
  // print(livros[1].titulo);
  Controlelivro().atualizarlivro(novolivro);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/bemvindo',
      routes: rotas,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(surfaceTintColor: Color(0xFFF8F6F2)),

        ///cor do appbar
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE1974D),

          ///cor do botão
          background: const Color(0xFFF8F6F2),

          ///cor de fundo
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 225, 151, 77)),

            ///cor da linha de baixo
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 225, 151, 77)),

            ///cor da linha de baixo quando selecionado
          ),
        ),
        useMaterial3: true,
        fontFamily: 'YesevaOne',
      ),
      // home: Inicial(),
      // home: Listasleitura(),
      // home: Telateste(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: Meuslivros(),
      // home: Pesquisa(),
      // home: Resumoano(),
      // home: Entrar(),
      // home: Perfil(),
      // home: Lendo(),
      // home: Bemvindo(),
      // home: DetalhesLivro(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8F6F2),
        flexibleSpace: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/img/voltar.png',
                  width: 32,
                  height: 20,
                )),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              //essa coluna é a que contem o texto e os campos de texto
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Olá, de novo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF333236),
                        fontSize: 30,
                        fontFamily: 'YesevaOne',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Column(
                      //coluna que contem os campos de texto
                      children: [
                        const SizedBox(
                            height: 50), //espaço entre o topo e o texto
                        Email(title: 'Email', senha: false),
                        const SizedBox(height: 20),
                        Email(title: 'Senha', senha: true),
                        const SizedBox(height: 20),
                        Buttonadd(
                          title: 'Entrar',
                          altura: 56,
                          largura: 256,
                          onPressed: () =>
                              Navigator.pushNamed(context, "/inicial"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 0),
                  ],
                ),
                const SizedBox(height: 0), //espaço entre o texto e o botão
              ],
            ),
          ),
        ),
      ),
    );
  }
}
