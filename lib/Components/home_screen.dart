import 'package:flutter/material.dart';
import 'package:tesla_clone/model/data/cars.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset('assets/images/logo.png'),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/menu.png'),
              ),
            ],
            leadingWidth: 100,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    Image.asset(
                      cars[index].image,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Positioned(
                      left: 50,
                      right: 50,
                      bottom: 150,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      const Text('Custom Order was Clicked'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF313136),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Text(
                                'Custom Order',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFFdad5d6),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Text(
                              'Custom Order',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: cars.length,
            ),
          ),
        ],
      ),
    );
  }
}
