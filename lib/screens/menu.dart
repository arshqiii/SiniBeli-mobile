import 'package:flutter/material.dart';
import 'package:sinibeli_mobile/widgets/left_drawer.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306275885';
  final String name = 'Muhammad Radhiya Arshq';
  final String className = 'PBP D';

  MyHomePage({super.key}); //constructor

  // berisi tombol-tombol yang ditambahkan pada class MyHomePage.
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.local_mall, const Color.fromARGB(255, 46, 193, 178),),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 111, 221, 115),),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 225, 87, 77),),
  ];

  @override
  Widget build(BuildContext context) {
    //* Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      //*============================AppBar============================//
      appBar: AppBar(
        title: const Text(
          'SiniBeli',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(), //* Menambahkan Drawer dalam widget Scaffold
      //*============================Body============================//
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.1),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //*============================InfoCard============================//
                SizedBox(
                  height: 100, 
                  child: Row(
                    children: [
                      Expanded(child: InfoCard(title: 'NPM', content: npm)),
                      const SizedBox(width: 12),
                      Expanded(child: InfoCard(title: 'Name', content: name)),
                      const SizedBox(width: 12),
                      Expanded(child: InfoCard(title: 'Class', content: className)),
                    ],
                  ),
                ),

                //* Memberikan jarak vertikal 16 unit.
                const SizedBox(height: 16.0),

                //*============================Welcome text============================//
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: const Text(
                    'Welcome to SiniBeli',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28.0,
                      color: Colors.black87,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),

                //*============================ItemCards============================//
                // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true, // Agar grid menyesuaikan tinggi kontennya.
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85, 
                  //* Menampilkan ItemCard untuk setiap item dalam list items.
                  children: items.map((ItemHomepage item) {
                    return ItemCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  //* Kartu informasi yang menampilkan title dan content.

  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content}); //constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 6.0),
            Flexible(
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, //handle kasus terjadi overflow
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color); //constructor
}

class ItemCard extends StatefulWidget {
  //* Menampilkan kartu dengan ikon dan nama.
  final ItemHomepage item;

  const ItemCard(this.item, {super.key}); //constructor

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        // menampilkan snackbar setelah animasi selesai
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                "Kamu telah menekan tombol ${widget.item.name}!",
                style: const TextStyle(fontSize: 14),
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(12),
            ),
          );
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedSlide( //animasi ketika itemCard ditekan
        duration: const Duration(milliseconds: 100),
        offset: Offset(0, isPressed ? 0.05 : 0),
        child: Material(
          color: widget.item.color,
          borderRadius: BorderRadius.circular(16),
          elevation: isPressed ? 1 : 2,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  widget.item.icon,
                  color: Colors.white,
                  size: 32.0,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, //handle kasus overflow
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}