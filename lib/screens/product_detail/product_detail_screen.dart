import 'package:app_in/data/dummy_data.dart';
import 'package:app_in/models/items.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String id;
  const ProductDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Model product = dummyList.firstWhere((element) => element.id == id);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: Navigator.of(context).pop,
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color.fromRGBO(10, 40, 50, 0.9),
              Color.fromRGBO(10, 40, 50, 0.6),
              Color.fromRGBO(10, 40, 50, 0.3),
            ],
          )),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
