import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///@TODO: DetailHeader
          Stack(
            children: [
              //image utama
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //custom back button
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withValues(alpha: 80),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),

          ///@TODO: DetailInfo
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                /// info atas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ],
                ),

                /// info tengah
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.place, color: Colors.red),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 70,
                      child: Text(
                        "Lokasi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(": ${candi.location}"),
                  ],
                ), //lokasi
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.blue),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 70,
                      child: Text(
                        "Dibangun",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(": ${candi.built}"),
                  ],
                ), //dibangun
                Row(
                  children: [
                    Icon(Icons.house, color: Colors.orange),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 70,
                      child: Text(
                        "Tipe",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(": ${candi.type}"),
                  ],
                ), //tipe
                /// info bawah
              ],
            ),
          ),

          ///@TODO: DetailGallery
        ],
      ),
    );
  }
}
