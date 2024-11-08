# SiniBeli-Mobile 🛍️

<h5> 🧑‍💻 Nama : Muhammad Radhiya Arshq  </h5>
<h5> 🆔 NPM : 2306275885 </h5>
<h5> 🏛️ Kelas : PBP D </h5>

## 📃 Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

## ✅ Checklist Tugas 8

- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
  - Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
  - Memiliki sebuah tombol Save.
  - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    - Setiap elemen input tidak boleh kosong.
    - Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
  - Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
  - Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
  - Ketika memiih opsi Tambah Item, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
- [ ] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  * Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
  * Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
  * Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
  * Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
  * Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- [x] Melakukan add-commit-push ke GitHub.

## 📃 Tugas 7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- _Stateless widget_ merupakan jenis widget flutter yang static sehingga tidak dapat diubah setelah dibuat sehingga perubahan apa pun pada variabel, ikon, tombol, atau pengambilan data tidak dapat mengubah status aplikasi. Contohnya Icon, IconButton, dan Text
- _Statefull widget_ merupakan jenis widget flutter yang dinamis sehingga dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Contohnya checkboxes, radio buttons, forms, dan text fields.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

| Widget                | Fungsi                                                                                    |
| --------------------- | ----------------------------------------------------------------------------------------- |
| Scaffold              | Menyusun tata letak dan struktur halaman.                                                 |
| AppBar                | Menampilkan judul aplikasi "SiniBeli" seperti navbar                                      |
| Container             | Sebuah kotak yang dapat menampung widget lain dan dihias.                                 |
| SafeArea              | Menjaga konten tetap berada di dalam area layar yang terlihat.                            |
| SingleChildScrollView | Memungkinkan konten badan untuk scroll secara vertikal jika overflow.                     |
| Column                | Menyusun widget-widget secara vertikal.                                                   |
| SizedBox              | Menambahkan jarak vertikal atau horizontal dan menentukan dimensi widget.                 |
| Row                   | Menyusun widget InfoCard secara horizontal di bagian informasi                            |
| Card                  | Digunakan dalam InfoCard untuk menampilkan kartu informasi dengan styling yang khusus.    |
| Padding               | Menambahkan jarak di dalam berbagai bagian untuk memberi ruang.                           |
| Text                  | Menampilkan teks seperti judul, pesan, dan informasi seperti NPM, nama, dan kelas.        |
| GridView.count        | Membuat tata letak grid dan menampilkan widget ItemCard dalam format grid dengan 3 kolom. |
| GestureDetector       | Mendeteksi gerakan seperti ketukan dan tekanan lama pada widget.                          |
| SnackBar              | Menampilkan pesan ketika itemCard ditekan.                                                |
| AnimatedSlide         | Menambahkan animasi geser pada ItemCard saat ditekan.                                     |
| Material              | Membungkus widget dengan properti seperti warna, bentuk, dan elevasi.                     |
| Icon                  | Menampilkan ikon pada setiap ItemCard dengan warna dan ukuran khusus.                     |
| Flexible              | Memastikan teks dalam InfoCard menyesuaikan ukuran untuk mencegah overflow.               |

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` digunakan untuk memberitahu framework bahwa ada perubahan pada data (state) yang perlu diperbarui pada tampilan. Ketika fungsi tersebut dipanggil Flutter akan merender ulang widget yang berada di dalamnya dengan nilai state yang telah diperbarui. Ini membantu menjaga sinkronisasi antara data dan tampilan, memungkinkan aplikasi untuk merespons perubahan data secara dinamis. Variabel-variabel yang biasanya terdampak adalah variabel yang disimpan dalam `State` class, atau variabel yang dideklarasikan sebagai bagian dari state di dalam widget

contoh :
```dart
class CounterWidgetState extends StatefulWidget {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```
Dari kode diatas, `counter` merupakan variabel yang terdampak oleh `setState()` dan ketika tombol ditekan, `incrementCounter()` dipanggil dan memperbarui nilai counter menggunakan `setState()` sehingga tampilannya terupdate.

### 4. Jelaskan perbedaan antara const dengan final.

`Const` dan `final` sama-sama memiliki fungsi untuk mencegah variabel untuk reassigned kembali dengan nilai yang berbeda. Perbedaan diantara dua ini ada di bagaimana nilai disimpan dalam memory. Untuk variabel dengan keyword `final` akan dialokasikan dalam memory ketika runtime, dan untuk variabel dengan keyword `const` akan dialokasikan dalam memory ketika compile-time

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

- Pertama saya membuat proyek Flutter baru di sebuah direktori dengan command `flutter create <APP_NAME>`
- Lalu melakukan `git init` & `git add-commit-push` pada root folder supaya bisa diakses di GitHub
- Didalam proyek Flutter yang dibuat terdapat folder `lib` yang berisi file `main.dart`, disana saya buat file `menu.dart` dan memindah sebagian kode main ke menu untuk membersihkkan struktur proyek
- Pada proyek Flutter, saya membuat 3 tombol dengan ikon dan teks pada file `menu.dart` dengan membuat dan menggunakan class ItemHomePage & ItemCard sebagai berikut
  ```dart
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
  ```
- ItemCard merupakan widget yang stateful sehingga dapat berubah secara dinamis, pada classnya terdapat function `createState()` yang merupakan sebuah metode yang digunakan dalam implementasi widget yang bersifat stateful di Flutter
- `createState()` mengembalikan `_ItemCardState()` yang berisi semua variabel dan logika untuk mengelola state widget ItemCard
- Untuk mengimplementasikan warna-warna yang berbeda pada tiap tombol ditambah atribut color pada class ItemHomePage
- Lalu untuk inisialisasi tombol-tombol tersebut diletakkan dalam class MyHomePage seperti berikut 
  ```dart
    final List<ItemHomepage> items = [
      ItemHomepage("Lihat Daftar Produk", Icons.local_mall, const Color.fromARGB(255, 46, 193, 178),),
      ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 111, 221, 115),),
      ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 225, 87, 77),),
    ];
  ```
- Lalu untuk memunculkannya dilakukan dengan :
  ```dart
    ...
    GridView.count(
      ...
      //* Menampilkan ItemCard untuk setiap item dalam list items.
      children: items.map((ItemHomepage item) {
        return ItemCard(item);
      }).toList(),
    ),
    ...
  ```
- Untuk memunculkan Snackbar ketika tiap tombol ditekan, ditambahkan konfigurasi pada `_ItemCardState` sebagai berikut
  ```dart
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
    )
  }
  }
    ...
  ```
- Ini memungkinkan setelah tombol ditekan akan keluar snackbar dengan content sesuai dengan tombol yang ditekan

## ✅ Checklist Tugas 7

- [x] Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
  - [x] Melihat daftar produk (Lihat Daftar Produk)
  - [x] Menambah produk (Tambah Produk)
  - [x] Logout (Logout)
- [x] Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
- [x] Memunculkan Snackbar dengan tulisan:
  - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
  - "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
  - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.
  - Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
  - Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
  - Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
  - Jelaskan perbedaan antara const dengan final.
  - Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- [x] Melakukan add-commit-push ke suatu repositori baru di GitHub.