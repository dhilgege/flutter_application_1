
void main() {
  // tipe data variable
  print('latihan 2');
  print('-----------');
  // var
  print("variable");
  var mahasiswa= "jejang";
  var umur = 20;
print(mahasiswa + " umur = " + umur.toString());
print('-----------');
  // string
  print("string");
  String mahasiswaString = "uhuyy";
  print(mahasiswaString);
  print("-----------");
  // int
  print("integer");
  int smesterInt ;
  smesterInt = 3;
  print(smesterInt);
  print('-----------');
  // double
  print("double");
  double ipkDouble = 3.5;
  print(ipkDouble);
  print('-----------');
  // boolean
  print("boolean");
  bool benarBool = true;   
  bool salahBool = false;   
  bool tidakBenar = !true;   
  bool tidakSalah = !false;
  print("-----------");   
  // list
  print("list");
  List<String> jurusanList = ["teknologi informasi", "mekatronika", "bahasa jepang", smesterInt.toString(), ipkDouble.toString(),];
  print(jurusanList);
  print("-----------");
  // map
  print("map");
  Map kelas = {
    "nama": "beben",
    "kelas": "TI 2"
  };
   print(kelas);
   print(kelas['nama']);
   print(kelas['kelas']);
    print('-----------');
  //  operator
  print("operator");
  int a = 10;
  int b = 5;
  print("a = " + a.toString());
  print("b = " + b.toString());
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a < b); 
  print(a > b);
  print(a <= b);
  print(a >= b);
  print("-----------");
  // conditional
  print("conditional");
  var nilai;
  nilai = 10;
  if (nilai >= 90) {
    print("A");
  } else if (nilai  <= 80 && nilai > 50) {
    print("B");
  } 
  else {
    print("tidak lulus");
  }

  print('-----------');
  nilai>= 80 ? print("A") : print("tidak A");
  print('-----------');
  // function
  print("function");
  hitungNilai();
  var p= hitungNilai1(75, 90, 55);
  print(p);
  var A= hitungNilai2(mapel1: 50, mapel2: 80);
  print(A);
  hitungNilai3(79, 100);

  // const
print('-----------');
print("const"); 
const String mahasiswa2 ="fadil"; 
print(mahasiswa2);
print("-----------");
// final
print("-----------");
print("final");
// bisa di inisialisasi nanti tapi hanya sekali
final String mahasiswa3;
mahasiswa3 = "fadir";
print(mahasiswa3);
print("-----------");
// null safety
// (? ) untuk mengijinkan null
// (! ) untuk memaksa tidak null
// (late ) untuk inisialisasi nanti tapi dipastikan tidak null
print("null safety");
late String jurusan;
jurusan = "teknologi informasi";
jurusan = "sistem informasi";
jurusan = "teknik komputer";
print(jurusan.length);


// perulangan/looping
print("-----------");
print("perulangan/looping");
// for
print("for");
print("plus");
for (int no =1; no <=5; no++){
  print(no);
}
print("-----------");

print("minus");
for (int no =5; no >=1; no--){
  print(no);
}
print("-----------");

// while
print("while");
int no1 =1;
int no2 =5;
while (no1 <= no2){
  print(no1);
  no1++;
  }
// do while
print("-----------");
print("do while");
int no3 =1;
int no4 =5;
do{
  print(no3);
  no3++;
}
while (no3 <= no4);
print("-----------");
// oop
// membuat object
var k1 = kendaraan("toyota", "merah", 100);
  print(k1.maju(50));
  print(k1.merk);
  print(k1.warna);
  print(k1.kecepatan);

  print("-----------");
  var k2 = kendaraan("Honda", "hijau jamet", 1000);
  print(k2.maju(200));
  print(k2.merk);
  print(k2.warna);
  print(k2.kecepatan);

  print("-----------");

}
// function
  hitungNilai(){
    print("hitung nilai");
  }
  // positional argument
  hitungNilai1(mapel1, mapel2, mapel3){
    var nilaiAkhir;
    if (mapel3 != null){
      nilaiAkhir = mapel1 + mapel2 + mapel3;
    } else {
      nilaiAkhir = mapel1 + mapel2;
    }
    return nilaiAkhir;
  }
  // named argument
  hitungNilai2({mapel1, mapel2}){
     var nilaiAkhir = mapel1 + mapel2;
    return nilaiAkhir;
    }
   
     // void
    void hitungNilai3(mapel1, mapel2){
      var nilaiAkhir = mapel1 + mapel2;
      print(nilaiAkhir);
    }

    // class
class kendaraan {
  // property
  String? merk;
  String? warna;
  int? kecepatan;
  // constructor
  kendaraan(this.merk, this.warna, this.kecepatan);
  // method 
  maju(int kecepatan){
    print(kecepatan.toString() + "km/h");
  } 
  // pewarisan

  
}


