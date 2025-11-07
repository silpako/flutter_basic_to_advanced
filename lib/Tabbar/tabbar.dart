import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TabbarWidget()));

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          backgroundColor: Colors.teal,
          centerTitle: true,

          // bottom
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.favorite), text: "Wishlist"),
              Tab(icon: Icon(Icons.person), text: "profile"),
            ],
          ),
        ),
        body: TabBarView(children: [HomeTab(), WishlistTab(), ProfileTab()]),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          color: Colors.teal.shade50,
          child: Text("Tab Bar Fotter", textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

// 🏠 Home Tab
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag, color: Colors.teal, size: 40),
              const SizedBox(height: 10),
              Text(
                "Product ${index + 1}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ❤️ Wishlist Tab
class WishlistTab extends StatelessWidget {
  const WishlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 3,
          child: ListTile(
            leading: const Icon(Icons.favorite, color: Colors.red),
            title: Text("Wishlisted Item ${index + 1}"),
            subtitle: const Text("Saved for later"),
            trailing: const Icon(Icons.delete, color: Colors.grey),
          ),
        );
      },
    );
  }
}

// 👤 Profile Tab
class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.teal,
            child: Icon(Icons.person, size: 60, color: Colors.white),
          ),
          SizedBox(height: 15),
          Text(
            "Silpa",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
