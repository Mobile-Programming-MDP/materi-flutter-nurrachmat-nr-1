import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //@TODO 1: deklarasi variable
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //@TODO 6: implementasi Routing ke DetailScreen

    //@TODO 2: tetapkan properties pada Card
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //@TODO 3: widget image
          Expanded(
            //@TODO 7: implementasi Hero Animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //@TODO 4: Text
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(candi.name, style: TextStyle(fontSize: 16)),
          ),
          //@TODO 5: Text
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(candi.type, style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
