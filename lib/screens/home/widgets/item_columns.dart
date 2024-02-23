import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemColumns extends StatelessWidget {
  const ItemColumns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/americano.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 8.0,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                child: Text(
                  'Robusta',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                child: Text(
                  'Arabica',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                color: Theme.of(context).colorScheme.tertiary,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          'Americano',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 10),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          'Best Americano here!',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Text(
              'Rp.32000',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700),
            ),
            const SizedBox(width: 15),
            Text(
              'Rp.38000',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                color: Colors.grey.shade500,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.add_circled_solid),
            ),
          ],
        ),
      )
    ]);
  }
}
