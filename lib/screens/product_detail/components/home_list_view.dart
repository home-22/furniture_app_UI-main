import 'package:app_in/models/items.dart';
import 'package:app_in/screens/product_detail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  final List<Model> items;

  const HomeListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 260,
        width: double.infinity,
        child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => ProductDetailScreen(id: items[i].id),
                    ),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30, top: 50),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.network(
                          items[i].imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
