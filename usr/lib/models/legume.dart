import 'package:flutter/material.dart';

class Legume {
  final String id;
  final String name;
  final String scientificName;
  final String description;
  final Map<String, String> nutritionalValues;
  final String healthRole;
  final Color color;
  final IconData icon;

  Legume({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.description,
    required this.nutritionalValues,
    required this.healthRole,
    required this.color,
    required this.icon,
  });
}

final List<Legume> legumesData = [
  Legume(
    id: '1',
    name: 'Lentilles',
    scientificName: 'Lens culinaris',
    description: 'Les lentilles sont de petites graines en forme de lentille, très appréciées pour leur cuisson rapide et leur richesse nutritionnelle. Elles sont consommées depuis la préhistoire.',
    nutritionalValues: {
      'Protéines': '9g',
      'Fibres': '8g',
      'Fer': '3.3mg',
      'Glucides': '20g',
    },
    healthRole: 'Excellente source d\'énergie durable. Le fer contenu aide à prévenir l\'anémie, tandis que les fibres solubles contribuent à stabiliser le taux de sucre dans le sang et à réduire le cholestérol. Elles favorisent également une bonne santé cardiaque.',
    color: Colors.brown.shade400,
    icon: Icons.lens,
  ),
  Legume(
    id: '2',
    name: 'Pois Chiches',
    scientificName: 'Cicer arietinum',
    description: 'Ronds et croquants, les pois chiches sont la base de nombreux plats méditerranéens et moyen-orientaux comme le houmous et les falafels.',
    nutritionalValues: {
      'Protéines': '8.9g',
      'Fibres': '7.6g',
      'Folates (B9)': '172µg',
      'Manganèse': '1mg',
    },
    healthRole: 'Ils favorisent une excellente santé digestive grâce à leur haute teneur en fibres. Ils jouent un rôle clé dans la satiété, aidant ainsi à la gestion du poids. Les folates sont essentiels pour le renouvellement cellulaire.',
    color: Colors.orange.shade300,
    icon: Icons.circle,
  ),
  Legume(
    id: '3',
    name: 'Haricots Rouges',
    scientificName: 'Phaseolus vulgaris',
    description: 'Connus pour leur forme de rein et leur couleur rouge foncé, ils sont incontournables dans les plats mijotés comme le chili con carne.',
    nutritionalValues: {
      'Protéines': '8.7g',
      'Fibres': '6.4g',
      'Potassium': '405mg',
      'Antioxydants': 'Élevé',
    },
    healthRole: 'Très riches en antioxydants, ils aident à lutter contre le vieillissement cellulaire. Le potassium qu\'ils contiennent est essentiel pour maintenir une pression artérielle saine et protéger le système cardiovasculaire.',
    color: Colors.red.shade700,
    icon: Icons.egg,
  ),
  Legume(
    id: '4',
    name: 'Petits Pois',
    scientificName: 'Pisum sativum',
    description: 'Graines sphériques vertes, souvent consommées fraîches, elles apportent une touche de douceur, de fraîcheur et de couleur aux plats.',
    nutritionalValues: {
      'Protéines': '5.4g',
      'Fibres': '5g',
      'Vitamine C': '40mg',
      'Vitamine K': '24µg',
    },
    healthRole: 'Contrairement aux autres légumineuses, ils sont une excellente source de vitamine C, renforçant le système immunitaire. La vitamine K est cruciale pour la coagulation sanguine et la santé des os.',
    color: Colors.green.shade500,
    icon: Icons.adjust,
  ),
];
