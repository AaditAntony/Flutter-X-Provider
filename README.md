# providerxflutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# error 
 Assertion failed:
 file:///C:/Users/Dell/AppData/Local/Pub/Cache/hosted/pub.dev/provider-6.1.1/lib/src/provider.dart:274:7
 context.owner!.debugBuilding ||
           listen == false ||
           debugIsInInheritedProviderUpdate
 "Tried to listen to a value exposed with provider, from outside of the widget tree.\n\nThis is
 likely caused by an event handler (like a button's onPressed) that called\nProvider.of without
 passing `listen: false`.\n\nTo fix, write:\nProvider.of<CartModel>(context, listen: false);\n\nIt is
 unsupported because may pointlessly rebuild the widget associated to the\nevent handler, when the
 widget tree doesn't care about the value.\n\nThe context used was: SliverList(delegate:
 SliverChildBuilderDelegate#1ec3b(estimated child count: 1), renderObject: RenderSliverList#3e101
 relayoutBoundary=up2)\n"



// format exception (mistache="₹40.00") instead of('40.00')