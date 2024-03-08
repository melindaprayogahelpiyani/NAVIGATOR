import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? item = ModalRoute.of(context)?.settings.arguments as String?;

    // Periksa apakah item tidak null sebelum digunakan
    if (item != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Detail Screen'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail $item',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Deskripsi:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Ini adalah deskripsi detail dari $item. Deskripsi ini memberikan informasi lebih lanjut tentang fitur, spesifikasi, dan manfaat dari $item. Pengguna dapat menggunakan informasi ini untuk membuat keputusan yang lebih baik saat memilih atau menggunakan $item.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Fitur Utama:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Fitur pertama\n'
                '2. Fitur kedua\n'
                '3. Fitur ketiga\n'
                'dan seterusnya...',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Harga:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Rp X,XXX,XXX',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Testimoni:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Ini adalah testimonial dari pengguna yang puas dengan $item. Mereka berbagi pengalaman positif mereka dalam menggunakan $item dan merekomendasikannya kepada orang lain.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
    } else {
      // Jika item null, tampilkan pesan kesalahan atau navigasi kembali ke layar sebelumnya
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text(
            'Error: No arguments passed to DetailScreen',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    }
  }
}
