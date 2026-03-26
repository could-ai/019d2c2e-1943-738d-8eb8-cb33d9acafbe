import 'package:flutter/material.dart';
import '../models/legume.dart';

class DetailScreen extends StatelessWidget {
  final Legume legume;

  const DetailScreen({super.key, required this.legume});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220.0,
            floating: false,
            pinned: true,
            backgroundColor: legume.color,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                legume.name, 
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, shadows: [Shadow(color: Colors.black26, blurRadius: 4)])
              ),
              background: Container(
                color: legume.color,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: -50,
                      bottom: -50,
                      child: Icon(legume.icon, size: 250, color: Colors.white.withOpacity(0.15)),
                    ),
                    Icon(legume.icon, size: 100, color: Colors.white.withOpacity(0.9)),
                  ],
                ),
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.eco, color: legume.color, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        legume.scientificName,
                        style: TextStyle(fontSize: 18, color: Colors.grey[600], fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    legume.description,
                    style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
                  ),
                  const SizedBox(height: 32),
                  _buildSectionTitle('Valeurs Nutritionnelles', Icons.pie_chart, legume.color),
                  const SizedBox(height: 8),
                  Text('Pour 100g de portion cuite', style: TextStyle(color: Colors.grey[500], fontSize: 14)),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      children: legume.nutritionalValues.entries.map((entry) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(entry.key, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black87)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: legume.color.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  entry.value, 
                                  style: TextStyle(color: legume.color, fontWeight: FontWeight.bold, fontSize: 16)
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildSectionTitle('Rôle pour la Santé Humaine', Icons.health_and_safety, legume.color),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: legume.color.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: legume.color.withOpacity(0.3)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: legume.color.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.favorite, color: legume.color, size: 24),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            legume.healthRole,
                            style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
