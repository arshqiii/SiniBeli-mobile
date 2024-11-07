import 'package:flutter/material.dart';
import 'package:sinibeli_mobile/widgets/left_drawer.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _nama = "";
  int _amount = 0;
  int _price = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Product',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(), //* Menambahkan Drawer dalam widget form page
      body: Form(
        //*berfungsi sebagai wadah bagi beberapa input field widget yang nanti akan kita buat.
        key: _formKey,
        child: SingleChildScrollView(
            //*berfungsi untuk membuat child widget di dalamnya menjadi scrollable.
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*==========================Input Nama Produk=============================//
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Isi nama produk",
                    labelText: "Product Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    //* akan dijalankan setiap ada perubahan isi TextFormField.
                    setState(() {
                      _nama = value!;
                    });
                  },
                  validator: (String? value) {
                    //* melakukan validasi isi TextFormField
                    if (value == null || value.isEmpty) {
                      //* validasi jika field nama kosong
                      return "Nama Produk tidak boleh kosong!";
                    }
                    if (value.length < 5) {
                      //* validasi jika field nama diisi nama kurang dari 5 karakter
                      return 'Panjang minimal adalah 5 karakter';
                    }
                    return null;
                  },
                )),
            //*==========================Input Jumlah Produk=============================//
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "isi jumlah yang tersedia",
                    labelText: "Amount",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    //* akan dijalankan setiap ada perubahan isi TextFormField.
                    setState(() {
                      _amount =
                          int.tryParse(value!) ?? 0; //* konversi string ke int
                    });
                  },
                  validator: (String? value) {
                    //* melakukan validasi isi TextFormField
                    if (value == null || value.isEmpty) {
                      //* validasi jika field nama kosong
                      return "Jumlah Produk tidak boleh kosong!";
                    }
                    final intAmount = int.tryParse(value);
                    if (intAmount == null) {
                      return "Harus berupa angka!";
                    }
                    if (intAmount <= 0) {
                      return 'Masa Jumlahnya kurang dari nol!';
                    }
                    return null;
                  },
                )),
            //*==========================Input Harga Produk=============================//
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "isi Harga Produk",
                    labelText: "Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    //* akan dijalankan setiap ada perubahan isi TextFormField.
                    setState(() {
                      _price =
                          int.tryParse(value!) ?? 0; //* konversi string ke int
                    });
                  },
                  validator: (String? value) {
                    //* melakukan validasi isi TextFormField
                    if (value == null || value.isEmpty) {
                      //* validasi jika field nama kosong
                      return "Harga tidak boleh kosong!";
                    }
                    final intPrice = int.tryParse(value);
                    if (intPrice == null) {
                      return "Harus berupa angka!";
                    }
                    if (intPrice <= 0) {
                      return 'Harga harus bernilai positif';
                    }
                    return null;
                  },
                )),
            //*==========================Input Deskripsi Produk=============================//
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Isi deskripsi produk",
                    labelText: "Product Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLines: null, // Mengatur area teks menjadi multi-baris
                  onChanged: (String? value) {
                    //* akan dijalankan setiap ada perubahan isi TextFormField.
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    //* melakukan validasi isi TextFormField
                    if (value == null || value.isEmpty) {
                      //* validasi jika field nama kosong
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                )),
            //*==========================Save Produk=============================//
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
