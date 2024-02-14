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
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyFavoritePage(), // Navigate to the Favorite page
                    ),
                  );
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
                CategoryIcon(icon: Icons.language, label: 'Japanese'),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyFavoritePage(), // Navigate to the Favorite page
                      ),
                    );
                  },
                ),
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
                    imgUrl: "https://www.sushiya.in/cdn/shop/products/10.FreshSalmonMaki.jpg?v=1629102974",
                  ),
                  ProductBox1(
                    name: "Pad Thai",
                    description: "10 minutes to read",
                    categories: 'Thai Food',
                    imgUrl: "https://hot-thai-kitchen.com/wp-content/uploads/2019/09/pad-thai-blog.jpg",
                  ),
                  ProductBox1(
                    name: "Pizza Margherita",
                    description: "Classic Italian pizza",
                    categories: 'Italian Food',
                    imgUrl: "https://www.simplyrecipes.com/thmb/gvI-6Y8PzSgXqUl79CXJ6XtB-TA=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2018__07__Pizza_Margherita-LEAD-6-6df306d583b84b1e89bc735d24c8c2db.jpg",
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              name: name,
              description: description,
              categories: categories,
              imgUrl: imgUrl,
            ),
          ),
        );
      },
      child: Container(
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
                      Text("Categories: " + this.categories),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String categories;
  final String imgUrl;

  ProductDetailsPage({
    required this.name,
    required this.description,
    required this.categories,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imgUrl,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text("Name: $name", style: TextStyle(fontSize: 18)),
            Text("Description: $description", style: TextStyle(fontSize: 16)),
            Text("Categories: $categories", style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the product list page
              },
              child: Text("Back to Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context); // Go back to the Home page
          },
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox1(
            name: "Japanese Salmon Sushi",
            description:
                "Salmon Maki the most classic looking sushi. Raw fresh salmon is wrapped in sticky sushi rice and crispy seaweed.",
            categories: "Japanese Food",
            imgUrl:
                "https://www.sushiya.in/cdn/shop/products/10.FreshSalmonMaki.jpg?v=1629102974",
          ),
          ProductBox1(
            name: "Pad Thai",
            description: "Pad Thai is a traditional Thai dish and is one of the most famous street food in the world",
            categories: 'Thai Food',
            imgUrl: "https://hot-thai-kitchen.com/wp-content/uploads/2019/09/pad-thai-blog.jpg",
          ),
          ProductBox1(
            name: "Lasagna",
            description: "Lasagna is the name of one of the oldest and best-known pasta shapes.",
            categories: "Italian Food",
            imgUrl: "https://static01.nyt.com/images/2023/08/31/multimedia/RS-Lasagna-hkjl/RS-Lasagna-hkjl-superJumbo.jpg",
          ),
          ProductBox1(
            name: "Panna Cotta",
            description: "It is One of the simplest desserts in the world: a pudding literally “cooked cream”.",
            categories: "Italian Dessert",
            imgUrl: "https://www.bigbasket.com/media/uploads/recipe/w-l/2867_2_1.jpg",
          ),
          ProductBox1(
            name: "Macaron",
            description: "A macaron is a meringue-based sandwich cookie fillings with buttercream, ganache, or fruit-based jam",
            categories: "French Dessert",
            imgUrl: "https://images.immediate.co.uk/production/volatile/sites/2/2022/05/Macarons-fb56db8.jpg?resize=768,574",
          ),
        ],
      ),
    );
  }
}
