import 'package:flutter/material.dart';

void main() {
  runApp(const RockInRio());
}

class RockInRio extends StatelessWidget {
  const RockInRio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock in Rio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atrações'),
      ),
      body: ListView.builder(
        itemCount: listaAtracoes.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(listaAtracoes[index].nome),
            subtitle: Text('dia: '+ listaAtracoes[index].dia.toString()),
          );
        },
      ),
    );
  }
}

class Atracao {
  final String nome;
  final int dia;
  final List<String> tags;

  const Atracao(this.nome, this.dia, this.tags);
}

const listaAtracoes = [
  Atracao("Iron Maiden", 2, ["Espetaculo", "Fas", "NovoAlbum"]),
  Atracao("Alok", 3, ["Influente", "Top", "Show"]),
  Atracao("Justin Bieber", 4, ["TopCharts", "Hits", "PríncipeDoPOP"]),
  Atracao("Guns N’ Roses", 8, ["Sucesso", "Espetáculo", "Fas"]),
  Atracao("Capital Inicial", 9, ["2019", "Novo Álbum", "Fas"]),
  Atracao("Green Day", 9, ["Sucesso", "Reconhecimento", "Show"]),
  Atracao("Cold Play", 10, ["NovoAlbum", "Sucesso", "2011"]),
  Atracao("Ivete Sangalo", 10, ["Unica", "Carreiras", "Fas"]),
  Atracao("Racionais", 3, ["Hits", "Prêmios", "Respeito"]),
  Atracao("Gloria Groove", 8, ["Streams", "Representatividade", "Sucesso"]),
  Atracao("Avril Lavigne", 9, ["Estreia", "Sucesso", "Lançamento"]),
  Atracao("Ludmilla", 10, ["Representativade", "Sucesso", "Parcerias"]),
];
