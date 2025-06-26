# Technical Test NBS - Favorite Movies App

## Overview
Aplikasi iOS sederhana yang menampilkan daftar film favorit dengan kemampuan untuk menghapus film dari list favorit. Proyek ini dibuat sebagai technical test untuk posisi iOS Developer di Nusantara Beta Studio.

## Studi Kasus
Aplikasi ini mendemonstrasikan:
- **Data Management**: Menggunakan data dummy film yang sudah terdefinisi dalam model
- **List Display**: Menampilkan daftar film dalam bentuk list dengan UI yang menarik
- **User Interaction**: Fitur untuk menghapus film dari daftar favorit dengan tombol heart icon
- **MVVM Architecture**: Implementasi pola arsitektur MVVM (Model-View-ViewModel)

## Teknologi yang Digunakan

### Framework & Language
- **Swift**: Bahasa pemrograman utama (100%)
- **SwiftUI**: Framework untuk membangun user interface
- **iOS Development**: Target platform iOS

### Arsitektur & Pattern
- **MVVM (Model-View-ViewModel)**: Pola arsitektur untuk separasi concern
- **ObservableObject**: Untuk state management dan reactive programming
- **Singleton Pattern**: Shared instance untuk MovieViewModel

### Komponen Utama
```
LiveCodeNBS/
├── LiveCodeNBSApp.swift          # Entry point aplikasi
├── Model/
│   └── MovieModel.swift          # Data model untuk film
├── View/
│   ├── MyFavoriteView.swift      # Main view untuk daftar favorit
│   └── MovieRowView.swift        # Component untuk row item film
└── ViewModel/
    └── MovieListViewModel.swift  # Business logic dan state management
```

## Fitur Aplikasi
- ✅ Menampilkan daftar film favorit
- ✅ UI card-based dengan gambar, title, tahun, dan kategori
- ✅ Fungsi hapus film dari favorit dengan tombol heart
- ✅ Navigation bar dengan title "Favorite Movies"
- ✅ Responsive UI menggunakan SwiftUI

## Cara Menjalankan Aplikasi

### Prerequisites
- **Xcode 15.0+** 
- **iOS 17.0+** (minimum deployment target)
- **macOS 12.0+** untuk development

### Langkah-langkah Installation

1. **Clone Repository**
   ```bash
   git clone https://github.com/uixvandev/LiveCodeNBS.git
   cd LiveCodeNBS
   ```

2. **Buka Project di Xcode**
   ```bash
   open LiveCodeNBS.xcodeproj
   ```
   Atau double-click file `LiveCodeNBS.xcodeproj`

3. **Select Target Device**
   - Pilih simulator iPhone di dropdown target
   - Atau connect device iOS fisik

4. **Build & Run**
   - Tekan `Cmd + R` atau klik tombol "Play" di Xcode
   - Aplikasi akan ter-build dan running di simulator/device

### Troubleshooting
- Pastikan Xcode sudah ter-update ke versi terbaru
- Jika ada error signing, pastikan Apple Developer Account sudah terkonfigurasi
- Untuk device fisik, pastikan sudah dalam mode Developer

## Demo Screenshot
![simulator_screenshot_637497C1-88B5-45A5-ABF3-D687F379D4C8](https://github.com/user-attachments/assets/6a6c492f-4463-47a5-ab52-9b4b3bf09a4f)
Aplikasi menampilkan:
- List
 film dengan thumbnail, judul, tahun rilis, dan kategori
- Tombol heart untuk remove dari favorit
- UI yang clean dan user-friendly


## Technical Implementation Notes
- Menggunakan dummy data `MovieModel.dummyMovies` yang direplikasi 2x untuk testing
- State management dengan `@Published` property wrapper
- Image loading menggunakan local assets
- Custom styling dengan SwiftUI modifiers

---

**Developer**: irfan wahendra  
**Created**: 26/06/2025  
**Repository**: [uixvandev/LiveCodeNBS](https://github.com/uixvandev/LiveCodeNBS)
