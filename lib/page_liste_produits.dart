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
}
