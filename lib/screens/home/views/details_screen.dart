import 'package:flutter/material.dart';
import 'package:kofitek_app/utils/media_query.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              // width: kWidth(context),
              // height: kHeight(context) * 0.5,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2, 10),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/americano.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Column(children: [
                Row(children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.heart_broken))
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
