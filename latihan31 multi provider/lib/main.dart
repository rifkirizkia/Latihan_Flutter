import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'money.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(create: (context) => Money()),
        ChangeNotifierProvider<Cart>(create: (context) => Cart())
      ],
      child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, child) => Consumer<Cart>(
              builder: (context, cart, child) => FloatingActionButton(
                  onPressed: () {
                    if (money.balance >= 500) {
                      cart.quantity += 1;
                      money.balance -= 500;
                    }
                  },
                  child: Icon(Icons.add_shopping_cart),
                  backgroundColor: Colors.purple),
            ),
          ),
          appBar: AppBar(
              backgroundColor: Colors.purple,
              title: const Text("Multi Provider")),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Balance"),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Money>(
                        builder: (context, money, child) => Text(
                            money.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    height: 30,
                    width: 150,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple.shade100,
                        border: Border.all(color: Colors.purple, width: 2)),
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Consumer<Cart>(
                    builder: (context, cart, child) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Apple (500) x " + cart.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        Text((500 * cart.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                height: 30,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 2)),
              )
            ],
          ))),
    ));
  }
}
