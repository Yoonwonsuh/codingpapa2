import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black38, borderRadius: BorderRadius.circular(16)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 42,
                ),
                SizedBox(height: 8),
                Text('Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.displaySmall),
                SizedBox(height: 16),
                Wrap(
                  spacing: 4,
                  alignment: WrapAlignment.start,
                  children: [
                    Chip(
                      onDeleted: () {
                        print('onChip Delete');
                      },
                      label: Text('건강',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('vegan',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Carrot',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Greens',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Wheat',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Pescetarian',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Mint',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Lemongrass',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Salad',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                    Chip(
                      label: Text('Water',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
