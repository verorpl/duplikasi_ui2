import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Item Product Coffee'),
            centerTitle: true,
          ),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.brown[50],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        child: Image.network(
                          'https://images.pexels.com/photos/7362647/pexels-photo-7362647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          height: 250,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Cappucino Coffe',
                              style: TextStyle(
                                color: Colors.brown[700],
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rp. 30.000',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Rp. 45.000',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color:  Colors.brown,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: 3.5,
                                  minRating: 1,
                                  direction: Axis.horizontal, 
                                  allowHalfRating: true, //buat bintang setengah
                                  itemCount: 5, //jumlah rating
                                  itemSize: 18,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  onRatingUpdate: (rating){
                                    print(rating);
                                  },
                                  ignoreGestures: true, //agar rating tidak berubah
                                  ),
                                  const SizedBox(width: 8,),
                                  const Text(
                                    '3.2k reviews',
                                    style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 12,
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            TextButton(
                              onPressed: () {
                                print('Shop Now');
                              },
                              style: ButtonStyle(
                                padding: WidgetStateProperty.resolveWith((states) {
                                  return const EdgeInsets.symmetric(horizontal: 30, vertical: 15);
                                }),
                                backgroundColor: WidgetStateProperty.resolveWith((states) {
                                  return Colors.white;
                                }), 
                                shape: WidgetStateProperty.resolveWith((states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  );
                                }),
                              ),
                              child: const Text('Shop Now'),
                              ),
                          ],
                        ),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

