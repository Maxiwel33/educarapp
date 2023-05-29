import 'package:flutter/material.dart';

class VideosSecao extends StatelessWidget {
  VideosSecao({super.key});

  List videoList = [
    'Introdução ao Flutter',
    'Instalação do Flutter no windows',
    'Criando emulador no Windows',
    'Criando Seu primeiro App',
    'Executando seu app no Device',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0 ? Colors.red : Colors.black45,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(videoList[index]),
            subtitle: const Text('20 min 50 sec'),
          );
        });
  }
}
