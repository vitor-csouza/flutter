

import 'package:app/contato.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}



class _ListaContatosState extends State<ListaContatos> {

  List<Contato> contatos = [
    Contato('Vitor', 'vitor@gmail.com', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    Contato('Pedro', 'pedro@gmail.com', 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    Contato('Davi', 'davi@gmail.com', 'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    Contato('Maria', 'maria@gmail.com', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    Contato('Ana', 'ana@gmail.com', 'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ];

  int count = 0;
  Color red = Colors.black;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos Favoritos ${count}'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contatos[index].urlImagem)),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: contatos[index].status == true ? Colors.red : Colors.black,
                ),
              onPressed: () {
                  setState(() {
                    if(contatos[index].status == false){
                      contatos[index].status = true;
                      count++;
                    } else {
                      contatos[index].status = false;
                      count--;
                    }

                  });
              },
              ),
          );
        },),

    );
  }
}