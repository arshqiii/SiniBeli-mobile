import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:sinibeli_mobile/screens/login.dart';
import 'package:sinibeli_mobile/screens/productentry_form.dart';
import 'package:sinibeli_mobile/screens/list_product.dart';

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
    final request = context.watch<CookieRequest>();
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) async {
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
        if (widget.item.name == "Tambah Produk") {
          //*Menambahkan routing ke halaman form
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductFormPage(),
              ));
        } else if (widget.item.name == "Lihat Daftar Produk") {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ));
        } else if (widget.item.name == "Logout") {
          final response = await request.logout(
              "http://127.0.0.1:8000/auth/logout/");
          String message = response["message"];
          if (context.mounted) {
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            }
          }
        }
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedSlide(
        //animasi ketika itemCard ditekan
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
