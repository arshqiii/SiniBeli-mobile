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
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton( //* Menambahkan icon back sebagai tombol keluar
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
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
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk Telah Tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //*Value-value yang muncul di Alert Dialog
                                    Text('Name : $_nama'),
                                    Text('Amount : $_amount'),
                                    Text('Price : Rp$_price.00'),
                                    Text('Description : $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                //* Menambahkan tombol OK untuk menutup Alert Dialog serta mereset isi form
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      _formKey.currentState!.reset();
                                    },
                                    child: const Text('OK'))
                              ],
                            );
                          });
                    }
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
