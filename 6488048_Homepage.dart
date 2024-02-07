import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {
                  // Add functionality for filter icon
                  print("Filter icon pressed");
                },
              ),
              IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {
                  // Add functionality for sort icon
                  print("Sort icon pressed");
                },
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, User',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'What are you cooking today',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[300],
              ),
              onChanged: (value) {
                print('Search query: $value');
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryIcon(icon: Icons.language, label: 'All'),
                CategoryIcon(icon: Icons.flag, label: 'Thai'),
                CategoryIcon(icon: Icons.all_inclusive, label: 'Indian'),
                CategoryIcon(icon: Icons.star, label: 'Chinese'),
                CategoryIcon(icon: Icons.local_pizza, label: 'Italian'),
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                children: <Widget>[
                  ProductBox1(
                    name: "Japanese Salmon Sushi",
                    description: "10 minutes to read.",
                    categories: "Japanese Food",
                    imgUrl:
                        "https://www.sushiya.in/cdn/shop/products/10.FreshSalmonMaki.jpg?v=1629102974",
                  ),
                  ProductBox1(
                    name: "Pad Thai",
                    description: "10 minutes to read",
                    categories: 'Thai Food',
                    imgUrl:
                        "https://hot-thai-kitchen.com/wp-content/uploads/2019/09/pad-thai-blog.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIcon({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.white),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class ProductBox1 extends StatelessWidget {
  ProductBox1({
    Key? key,
    required this.name,
    required this.description,
    required this.categories,
    required this.imgUrl,
  }) : super(key: key);

  final String name;
  final String description;
  final String categories;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 200,
      child: Card(
        color: Colors.grey[300],
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                imgUrl,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Categories: " + this.categories.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
