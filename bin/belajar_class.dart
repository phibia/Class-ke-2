import 'dart:io';
// NOMOR 1
// void main(){
//   var data1 = mahasiswa();
//   data1.Nama = "Hengky";
//   data1.npm = 2543887;
//   data1.jurusan = "Sistem Informasi";
//   data1.cetak();
// }
// class mahasiswa{
//   String? Nama;
//   int? npm;
//   dynamic? jurusan;
//   void garis(){
//     print("=========================");
//   }
//   void cetak(){
//       garis();
//       print("1.   Nama  : $Nama");
//       print("2.   Npm   : $npm");
//       print("3. Jurusan : $jurusan");
//     }
// }

// NOMOR 2

//=======================================================================================
//                             Class + Attribute + Object + Method
//=======================================================================================
// void main(){
//   void garis2(){
//     print("==========================");
//   }
//   garis2();
//    var datakomputer1  = komputer();
//   datakomputer1.merek = "Samsung";
//   datakomputer1.warna = "Hitam";
//   datakomputer1.harga = 3000000;
//   datakomputer1.cetak();

//    var datakomputer2  = komputer();
//   datakomputer2.merek = "Iphone";
//   datakomputer2.warna = "Putih";
//   datakomputer2.harga = 1200000;
//   datakomputer2.cetak();

//    var datakomputer3  = komputer();
//   datakomputer3.merek = "Xiomi";
//   datakomputer3.warna = "Biru";
//   datakomputer3.harga = 2500000;
//   datakomputer3.cetak();
//   garis2();

// }
// class komputer{
//   String? merek;
//   String? warna;
//   int? harga;
//   void garis(){
//     print("===========================");
//   }
//   void cetak(){
//     garis();
//     print("1. Merek :$merek");
//     print("2. Warna :$warna");
//     print("3. Harga :$harga");
//   }
// }
//===========================================================================================

//              3. Lanjut Soal 3 — Class + Attribute + Object + Method + List

//===========================================================================================

// void main(){

//   var komputer1   = komputer();
//   komputer1.nama  = "ASUS ROG STRIX G16";
//   komputer1.harga = 30000000;
//   komputer1.Stok.add(5);
//   komputer1.Stok.add(15);
//   komputer1.Stok.add(3);
//   komputer1.output();
// }
//  class komputer{
//   String? nama;
//   int? harga;
//   List<int> Stok = [];
//   void output(){
//     print(" Nama  :  $nama");
//     print(" Harga :  $harga");
//     for(var i = 0; i < Stok.length; i++){
//       print("${i+1}.Stok = ${Stok[i]}");
//     }
//   }
//  }
//==============================================================================================

//               Soal 4 (Class + List + Hitung Total, soal Siswa Andi dan Siti).

//==============================================================================================
// 

// ==============================================================================================

//               Soal 4 (Class + List + Hitung Total, soal Siswa Andi dan Siti).

//===============================================================================================

void main() {
  var toko1 = Toko();
  toko1.desc['nama'] = 'Toko Maju';
  toko1.desc['kota'] = 'Pontianak';
  toko1.stok.add(10);
  toko1.stok.add(20);
  toko1.stok.add(30);
  toko1.harga.add(15000);
  toko1.harga.add(20000);
  toko1.harga.add(25000);

  var toko2 = Toko();
  toko2.desc['nama'] = 'Toko Jaya';
  // kota tidak diisi, jadi null
  toko2.stok.add(5);
  toko2.stok.add(15);
  toko2.harga.add(30000);
  toko2.harga.add(40000);

  var toko3 = Toko();
  toko3.desc['nama'] = 'Toko Sinar';
  toko3.desc['kota'] = 'Singkawang';
  // stok dan harga tidak diisi, jadi List kosong

  List<Toko> daftarToko = [];
  daftarToko.add(toko1);
  daftarToko.add(toko2);
  daftarToko.add(toko3);

  for (int i = 0; i < daftarToko.length; i++) {
    daftarToko[i].cetak();
  }
}

class Toko {
  Map<String, String?> desc = {'nama': null, 'kota': null};
  List<int> stok = [];
  List<int> harga = [];

  void garis() {
    print('=====================================');
  }

  void cetak() {
    garis();
    print('Nama  : ${desc['nama'] ?? 'Belum diisi'}');
    print('Kota  : ${desc['kota'] ?? 'Belum diisi'}');

    int total = 0; // di luar for

    for (int i = 0; i < stok.length; i++) {
      print('Stok ke-${i + 1}: ${stok[i]}');
      total += stok[i]; // ditambah, bukan ditimpa
    }

    for (int i = 0; i < harga.length; i++) {
      print('Harga ke-${i + 1}: ${harga[i]}');
    }

    print('Total stok: $total'); // sesudah for
  }
}