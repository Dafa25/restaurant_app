import 'package:flutter/material.dart';
import 'package:restaurant_app/model/restaurants.dart';
import 'package:restaurant_app/page/detail_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/Home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("List Restaurant"),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/local_restaurant.json"),
        builder: (context, snapshot) {
          final List<Restaurant> restaurant = parseRestaurants(snapshot.data);
          return ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                    color: Colors.black54,
                  ),
              itemCount: restaurant.length,
              itemBuilder: (context, index) {
                return buildRestaurantsItem(context, restaurant[index]);
              });
        },
      ),
    );
  }

  Widget buildRestaurantsItem(BuildContext context, Restaurant restaurant) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image.network(
          restaurant.pictureId,
          width: 100,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(
              Icons.error,
              size: 24.0,
            ),
          ),
        ),
      ),
      title: Text(
        restaurant.name,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                  size: 20.0,
                ),
                const SizedBox(width: 5),
                Text(
                  restaurant.city,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            SizedBox(
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                    size: 20.0,
                  ),
                  Text(restaurant.rating.toString(),
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, DetailRestaurantPage.routeName,
            arguments: restaurant);
      },
    );
  }
}
