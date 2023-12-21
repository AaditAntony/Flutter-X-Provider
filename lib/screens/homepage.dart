import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerxflutter/providerModel/cartmodel.dart';
import 'package:providerxflutter/screens/cartPage.dart';
import 'package:providerxflutter/screens/grocerytile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ));
        },
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Good Morning,',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Let\'s Order fresh items for you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Fresh items',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemCount: value.shopItems.length,
                  itemBuilder: (context, index) {
                    return Grocerytile(
                      name: value.shopItems[index][0],
                      price: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
