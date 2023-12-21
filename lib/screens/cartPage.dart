import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:providerxflutter/providerModel/cartmodel.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.amberAccent,
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                value.cartItems[index][2],
                              ),
                            ),
                            title: Text(value.cartItems[index][0]),
                            subtitle: Text(value.shopItems[index][1]),
                            trailing: IconButton(
                                onPressed: () {
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemsFromCart(index);
                                },
                                icon: const Icon(Icons.cancel)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text('Total price:'),
                      Text(value.calculate()),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
// Assertion failed:
// file:///C:/Users/Dell/AppData/Local/Pub/Cache/hosted/pub.dev/provider-6.1.1/lib/src/provider.dart:274:7
// context.owner!.debugBuilding ||
//           listen == false ||
//           debugIsInInheritedProviderUpdate
// "Tried to listen to a value exposed with provider, from outside of the widget tree.\n\nThis is
// likely caused by an event handler (like a button's onPressed) that called\nProvider.of without
// passing `listen: false`.\n\nTo fix, write:\nProvider.of<CartModel>(context, listen: false);\n\nIt is
// unsupported because may pointlessly rebuild the widget associated to the\nevent handler, when the
// widget tree doesn't care about the value.\n\nThe context used was: SliverList(delegate:
// SliverChildBuilderDelegate#1ec3b(estimated child count: 1), renderObject: RenderSliverList#3e101
// relayoutBoundary=up2)\n"



// format exception (mistache="₹40.00") instead of('40.00')