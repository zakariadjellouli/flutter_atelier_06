import 'package:flutter/material.dart';
import 'models/produit.dart';
import 'page_details_produit.dart';

class ListProduits extends StatelessWidget {
  ListProduits({super.key});

  final List<Produit> produits = [
    Produit(
      nom: "ordinateur portable",
      description: "laptop puissant pour travail et gaming",
      prix: 1200.0,
    ),
    Produit(
      nom: "smartphone",
      description: "telephone nouvelle generation avec triple camera",
      prix: 900.0,
    ),
    Produit(
      nom: "casque bleutooth",
      description: "casque sans fil avec reduction  de bruit",
      prix: 150.0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste de produits")),
      body: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final produit = produits[index];
          return Card(
            elevation: 3,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                produit.nom,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${produit.prix}\$"),
              trailing: ElevatedButton(
                child: Text("voir"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsProduit(produit: produit),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
