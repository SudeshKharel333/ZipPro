import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    //return GetBuilder<admin_logic>(builder: (logic) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 163),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help and Support'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 235, 163),
        title: const Text('My First App'),
      ),
      body: ListView(
        children: const [
          Card(
            color: Color.fromARGB(255, 182, 222, 254),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('User'),
              subtitle: Text('555-555-5555'),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 182, 222, 254),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Seller'),
              subtitle: Text('555-555-5555'),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 182, 222, 254),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Product'),
              subtitle: Text('555-555-5555'),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 182, 222, 254),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Order'),
              subtitle: Text('555-555-5555'),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 182, 222, 254),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Promotion and Discount'),
              subtitle: Text('555-555-5555'),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      ),
    );
  }
}
