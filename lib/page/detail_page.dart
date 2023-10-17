// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:restaurant_app/model/restaurants.dart';

class DetailRestaurantPage extends StatefulWidget {
  static const routeName = '/DetailRestaurantPage';

  final Restaurant restaurant;

  const DetailRestaurantPage({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  State<DetailRestaurantPage> createState() => _DetailRestaurantPageState();
}

class _DetailRestaurantPageState extends State<DetailRestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          child: Column(
            children: [
              // image
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  child: Image.network(widget.restaurant.pictureId),
                ),
              ),
              // headline
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.restaurant.name,
                          style: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 24.0,
                                color: Colors.orangeAccent,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                widget.restaurant.rating.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 24.0,
                            color: Colors.redAccent,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.restaurant.city,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Deskripsi
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SingleChildScrollView(
                  child: Text(
                    widget.restaurant.description,
                    maxLines: 8,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // food
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Food",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.restaurant.menus.foods.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            widget.restaurant.menus.foods[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 15),
              // drink
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Drink",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.restaurant.menus.drinks.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            widget.restaurant.menus.drinks[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
