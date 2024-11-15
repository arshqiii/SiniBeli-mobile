# SiniBeli-Mobile 🛍️

<h5> 🧑‍💻 Nama : Muhammad Radhiya Arshq  </h5>
<h5> 🆔 NPM : 2306275885 </h5>
<h5> 🏛️ Kelas : PBP D </h5>

## 📃 Tugas 9

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?


### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini


### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.


### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.


### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.


### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).


## ✅ Checklist Tugas 9
- [ ] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- [ ] Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- [ ] Membuat halaman login pada proyek tugas Flutter.
- [ ] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [ ] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [ ] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
    - Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
- [ ] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    - Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
    - Tampilkan seluruh atribut pada model item kamu pada halaman ini.
    - Tambahkan tombol untuk kembali ke halaman daftar item.
- [ ] Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
- [ ] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
    - Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
    - Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
    - Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    - Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    - Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    - Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- [ ] Melakukan add-commit-push ke GitHub.

## 📃 Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Keyword `const` di Flutter digunakan untuk membuat sebuah objek/nilai yang bersifat konstan selama compile time.

Ketika sebuah widget ditandai dengan `const`, ini akan dianggap oleh Flutter sebagai objek yang pre-built dan immutable. Ini memungkinkan Flutter untuk reuse objek tersebut daripada membuat yang baru sehingga menghindari alokasi memori yang tidak diperlukan sehingga menghasilkan kinerja yang lancar.

`const` sebaiknya digunakan ketika membuat data objek atau widget yang stateless (seperti `Color` dan `Text`) dan sebaiknya dihindar ketika membuat widget yang dinamis/stateful seperti yang bergantung pada input user atau data yang sering berubah.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row merupakan dua layout widget dalam Flutter yang berfungsi untuk menata widget secara vertikal dan horizontal sesuai keperluan.

1. Column
   
   Fungsi : digunakan untuk menata widget secara vertikal dari atas ke bawah
   
   Implementasi :
    ```dart
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Widget 1"),
        Text("Widget 2"),
        Text("Widget 3"),
        ],
    )
    ```

2. Row

   Fungsi : digunakan untuk menata widget secara horizontal dari kiri ke kanan
   
   Implementasi :
    ```dart
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.star),
        Icon(Icons.favorite),
        Icon(Icons.thumb_up),
      ],
    )
    ```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Untuk tugas kali ini, elemen input yang saya gunakan pada halaman form hanya `TextFormField`. Ini digunakan untuk menerima input user terkait nama produk, jumlah produk yang tersedia, harga, dan deskripsi. Ini juga dilengkapi dengan validasi jika input kurang sesuai.

Di Flutter, selain `TextFormField` terdapat banyak elemen input yang tersedia seperti :
- `Checkbox` : Memungkinkan user memilih satu atau lebih opsi dari banyak pilihan
- `Radio` : Digunakan ketika terdapat sejumlah pilihan dan user hanya bisa memilih satu opsi dari beberapa pilihan tersebut.
- `Switch` : Mirip seperti Checkbox, namun bentuknya seperti tombol yang bisa digeser ke kiri atau kanan. Digunakan untuk pengaturan seperti mengaktifkan atau menonaktifkan fitur tertentu.
- `DropdownButton` : Menampilkan menu tarik turun atau dropdown yang memungkinkan user memilih satu dari beberapa opsi yang tersedia. 

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Cara saya mengatur tema dalam aplikasi Flutter supaya konsisten adalah dengan melakukan pengaturan di file `main.dart`. Disana ditetapkan tema global pada widget `MaterialApp` sehingga memastikan komponen-komponen UI yang menggunakan tema mengikuti gaya yang seragam di seluruh aplikasi.

```dart
MaterialApp(
      title: 'SiniBeli-mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: const Color.fromARGB(255, 154, 225, 119)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
```
Lalu untuk mengimplementasikannya ke elemen lain di aplikasi dilakukan seperti berikut,
```dart
...
 backgroundColor: Theme.of(context).colorScheme.primary,
...
```
Pada contoh diatas `backgroundColor` mengambil warna yang sesuai dengan yang diterapkan di `MaterialApp` sehingga konsisten dengan yang ditetapkan.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi dalam aplikasi dilakukan dengan drawer yang dibuat, drawer tersebut berisi tombol-tombol yang mengarahkan user ke halaman tertentu seperti halaman form tambah produk baru atau ke halaman utama.

Ini dilakukan dengan widget `Navigator` melalui `BuildContext` dan memanggil fungsi yang ada, seperti :
- `push()` : menambahkan suatu route ke dalam stack route sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna
  ```dart
  ...
  onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductFormPage(),
          ));
    },
  ...
  ```
- `pop()` : menghapus route yang sedang ditampilkan kepada pengguna dan menyebabkan aplikasi untuk berpindah dari route yang sedang ditampilkan kepada pengguna ke route yang berada di bawahnya
  ```dart
  ...
  IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new))
  ...
  ```
- `pushReplacement()` :  menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route, ini menyebabkan route lama pada atas stack akan digantikan secara langsung oleh route baru yang diberikan tanpa mengubah kondisi elemen stack yang berada di bawahnya.
Implementasi :
  ```dart
  ...
  onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ...
  ```

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
- [x] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  - Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
  - Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
  - Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
  - Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
  - Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
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
