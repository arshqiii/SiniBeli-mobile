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
        elevation: 0, // Remove shadow
        leading: IconButton(
            //* Menambahkan icon back sebagai tombol keluar
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      drawer: const LeftDrawer(), //* Menambahkan Drawer dalam widget form page
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
        child: Form(
          //*berfungsi sebagai wadah bagi beberapa input field widget yang nanti akan kita buat.
          key: _formKey,
          child: SingleChildScrollView(
              //*berfungsi untuk membuat child widget di dalamnya menjadi scrollable.
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //*==========================Input Nama Produk=============================//
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Isi nama produk",
                        labelText: "Product Name",
                        prefixIcon: Icon(Icons.shopping_bag,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
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
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                //*==========================Input Jumlah Produk=============================//
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "isi jumlah yang tersedia",
                        labelText: "Amount",
                        prefixIcon: Icon(Icons.inventory_2,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (String? value) {
                        //* akan dijalankan setiap ada perubahan isi TextFormField.
                        setState(() {
                          _amount = int.tryParse(value!) ??
                              0; //* konversi string ke int
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
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                //*==========================Input Harga Produk=============================//
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "isi Harga Produk (dalam Rupiah)",
                        labelText: "Price",
                        prefixIcon: Icon(Icons.attach_money,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (String? value) {
                        //* akan dijalankan setiap ada perubahan isi TextFormField.
                        setState(() {
                          _price = int.tryParse(value!) ??
                              0; //* konversi string ke int
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
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                //*==========================Input Deskripsi Produk=============================//
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Isi deskripsi produk",
                        labelText: "Product Description",
                        prefixIcon: Icon(Icons.description,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      maxLines: 4,
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
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                //*==========================Save Produk=============================//
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  title: const Text(
                                    'Produk Telah Tersimpan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //*Value-value yang muncul di Alert Dialog
                                        Text('Name : $_nama',
                                            style:
                                                const TextStyle(fontSize: 16)),
                                        const SizedBox(height: 8),
                                        Text('Amount : $_amount',
                                            style:
                                                const TextStyle(fontSize: 16)),
                                        const SizedBox(height: 8),
                                        Text('Price : Rp$_price.00',
                                            style:
                                                const TextStyle(fontSize: 16)),
                                        const SizedBox(height: 8),
                                        Text('Description : $_description',
                                            style:
                                                const TextStyle(fontSize: 16)),
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
                                        child: Text(
                                          'OK',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ))
                                  ],
                                );
                              });
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
