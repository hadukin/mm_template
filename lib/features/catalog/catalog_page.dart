import 'package:flutter/material.dart';
import 'package:mm_template/router/router.dart';

@RoutePage()
class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
    );
  }
}
