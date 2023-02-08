import 'package:flutter/material.dart';

import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Mike Katz',
            title: 'Smoothie Connoisseur',
            imageProvider: AssetImage('assets/author_katz.jpeg'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('Smoothies',
                          style: Theme.of(context).textTheme.displayLarge)),
                ),
                Text('Recipe', style: Theme.of(context).textTheme.displayLarge),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
