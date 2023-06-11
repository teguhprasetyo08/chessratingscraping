<div align="left">
  
  ![image](chess-king-wooden-pieces-3yal5hd39dvbvu9u.jpg)

# Scraping Rating Pemain Catur FIDE
## Tentang
  Disusun untuk memenuhi tugas akhir praktikum Mata Kuliah Manajemen Data Statistika topik Web Scraping & Crawling
  Sumber data pada scraping ini dari situs https://www.chess.com/ratings di mana pada laman tersebut menyajikan live rating pemain catur FIDE yang terdiri dari rating permainan tipe klasik (classical), cepat (rapid), dan kilat (blitz). Pada situs tersebut, update dilakukan secara harian dengan mengkalkulasi rating terbaru berdasarkan pertandingan FIDE resmi. FIDE adalah organisasi yang mewadahi olahraga catur dunia, yang memiliki agenda rutin pertandingan catur dari beberapa tipe permainan.
  Scraping dilakukan menggunakan library *rvest* pada *software R* dan hasilnya disimpan dalam bentuk basis data NoSQL *collection* pada *MongoDB Atlas*.
  
## Struktur Dokumen
  Berikut ini adalah contoh dokumen pada koleksi MongoDB yang sudah tersimpan

```
{"_id":
  {"$oid":"64829d80ce65eb57da0a4356"},
  "Rank": {
    "String"
  },
  "Name": {
    "String"
  },
  "Classical": {
    "Integer"
  },
  "Rapid": {
    "Integer"
  },
  "Blitz": {
    "Integer"
  },
  "Scraping_Date": {
    "Date Time"
  }
}
```
## Hasil Laporan
  Adapun hasil laporan tugas ini dapat diakses dalam laman Rpubs berikut: https://rpubs.com/teguhprasetyo08/chessrating


