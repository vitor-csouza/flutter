

import 'package:app/contato.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> contatos = [
    Contato('Vitor', 'vitor@gmail.com'),
    Contato('Pedro', 'pedro@gmail.com'),
    Contato('Davi', 'davi@gmail.com'),
    Contato('Maria', 'maria@gmail.com'),
    Contato('Ana', 'ana@gmail.com'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contatos[index].nomeCompleto.substring(0,1)),
            ),
            title: Text(contatos[index].nomeCompleto),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}