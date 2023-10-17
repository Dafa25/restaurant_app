// body: Container(
//         child: Column(
//           children: [
//             // Images
//             Container(
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(0),
//                   bottomRight: Radius.circular(0),
//                 ),
//                 child: Image.network(widget.restaurant.pictureId),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         widget.restaurant.name,
//                         style: const TextStyle(
//                             fontSize: 26, fontWeight: FontWeight.w600),
//                       ),
//                       SizedBox(
//                         child: Row(
//                           children: [
//                             const Icon(
//                               Icons.star,
//                               size: 24.0,
//                               color: Colors.orangeAccent,
//                             ),
//                             const SizedBox(width: 5),
//                             Text(
//                               widget.restaurant.rating.toString(),
//                               style: const TextStyle(fontSize: 20),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   SizedBox(
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.location_on,
//                           color: Colors.redAccent,
//                           size: 20.0,
//                         ),
//                         const SizedBox(width: 5),
//                         Text(
//                           widget.restaurant.city,
//                           style: const TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   // Deskripsi Detail Page
//                   const SizedBox(
//                     child: Text("Deskrpsi",
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black87)),
//                   ),
//                   const SizedBox(height: 5),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: SizedBox(
//                       child: Text(
//                         widget.restaurant.description,
//                         maxLines: 8,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(fontSize: 15),
//                         textAlign: TextAlign.justify,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   // menu Restaurant
//                   SizedBox(
//                     child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: widget.restaurant.menus.foods.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             width: 200,
//                             margin: const EdgeInsets.symmetric(horizontal: 20),
//                             decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           );
//                         }),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),