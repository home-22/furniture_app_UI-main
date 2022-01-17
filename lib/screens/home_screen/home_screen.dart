import 'package:app_in/screens/home_screen/components/news.dart';
import 'package:flutter/material.dart';
import 'package:app_in/components/category.dart';
import 'package:app_in/data/dummy_data.dart';
import 'package:app_in/models/items.dart';
import 'package:app_in/screens/product_detail/components/home_list_view.dart';
import 'package:app_in/screens/product_detail/components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SearchBar(),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            const HomeNews(),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),

            // ! POPULAR
            Category(
              title: 'Popular',
              buttonTitle: 'Show All',
              onPress: () {},
            ),
            HomeListView(
              items: dummyList.where((element) => element.rate >= 4.5).toList(),
            ),
            // ! CHAIRS
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            const Category(title: 'Chairs', buttonTitle: 'See more'),
            HomeListView(
              items: dummyList
                  .where((element) => element.type == ItemType.chair)
                  .toList(),
            ),
            // ! BEDS
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            const Category(title: 'Beds', buttonTitle: 'See more'),
            HomeListView(
              items: dummyList
                  .where((element) => element.type == ItemType.bed)
                  .toList(),
            ),
            // ! TABLES
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            const Category(title: 'Tables', buttonTitle: 'See more'),
            HomeListView(
              items: dummyList
                  .where((element) => element.type == ItemType.table)
                  .toList(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.cyan[900],
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: 'Favorite',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}