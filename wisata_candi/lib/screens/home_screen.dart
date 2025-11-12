import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@TODO 1 : Buat Appbar dengan Judul Wisata Candi
      appBar: AppBar(title: Text("Wisata Candi")),
      //@TODO 2 : Buat GridView.buider
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: EdgeInsets.all(8),
        itemCount: candiList.length,
        itemBuilder: (_, index) {
          //@TODO 3 : Buat ItemCard
          Candi candi = candiList[index];
          //Buat Widget ItemCard di folder widgets

          return ItemCard(candi: candi);
        },
      ),
    );
  }
}
