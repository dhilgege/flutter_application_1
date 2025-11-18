// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  // tipe data variable
  print('latihan 2');
  print('-----------');
  // var
  print("variable");
  var mahasiswa= "jejang";
  var umur = 20.toString();
print(mahasiswa + " umur = " + umur);
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
  nilai = 80;
  print("A");
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