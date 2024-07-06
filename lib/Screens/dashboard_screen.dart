import 'package:flutter/material.dart';
import 'package:inventory_management_system/Screens/category.dart';
import 'package:inventory_management_system/Screens/product.dart';
import 'package:inventory_management_system/Screens/store.dart';
import 'package:inventory_management_system/services/auth_service.dart';
import 'package:inventory_management_system/widgets/IconText.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Inventory Management System".toUpperCase(),
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red[500],
          actions: [
            IconButton(
              icon: Icon(Icons.logout, color: Colors.white),
              onPressed: () async {
                await authService.logOut();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Colors.red[500],
        //         ),
        //         child: Text('Drawer Header'),
        //       ),
        //       ListTile(
        //         title: const Text('Item 1'),
        //         onTap: () {
        //           // Handle item 1 tap
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Item 2'),
        //         onTap: () {
        //           // Handle item 2 tap
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithText(
                            text: "Dashboard",
                            icon: Icon(Icons.dashboard, color: Colors.red[500]),
                            calledFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardScreen()),
                              );
                            }),
                        IconWithText(
                            text: "Store",
                            icon: Icon(Icons.store, color: Colors.blue[500]),
                            calledFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StoreScreen()),
                              );
                            }),
                        IconWithText(
                            text: "Category",
                            icon:
                                Icon(Icons.category, color: Colors.brown[500]),
                            calledFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen()),
                              );
                            }),
                        IconWithText(
                            text: "Product",
                            icon: Icon(Icons.production_quantity_limits,
                                color: Colors.blueGrey[500]),
                            calledFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductScreen()),
                              );
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithText(
                            text: "Unit",
                            icon: Icon(Icons.ad_units, color: Colors.cyan[500]),
                            calledFunction: () {}),
                        IconWithText(
                            text: "MRR",
                            icon: Icon(Icons.category,
                                color: Colors.deepOrangeAccent[500]),
                            calledFunction: () {}),
                        IconWithText(
                            text: "Supplier",
                            icon: Icon(Icons.currency_exchange,
                                color: Colors.orange[500]),
                            calledFunction: () {}),
                        IconWithText(
                            text: "Transaction",
                            icon: Icon(Icons.send, color: Colors.indigo[500]),
                            calledFunction: () {}),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
