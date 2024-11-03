# SiniBeli-Mobile 🛍️

<h5> 🧑‍💻 Nama : Muhammad Radhiya Arshq  </h5>
<h5> 🆔 NPM : 2306275885 </h5>
<h5> 🏛️ Kelas : PBP D </h5>

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
- [ ] Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.
  - Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
  - Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
  - Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
  - Jelaskan perbedaan antara const dengan final.
  - Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- [x] Melakukan add-commit-push ke suatu repositori baru di GitHub.
