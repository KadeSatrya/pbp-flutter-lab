# Tugas 7
Kade Satrya Noto Sadharma / 2106752376 / PBP C

# A. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak pernah berubah. Sementara itu, stateful widget adalah widget yang berubah sesuai dengan perubahan state yang dihasilkan oleh suatu event.

# B. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. AppBar untuk menampilkan judul di paling atas
2. Center untuk menampilkan teks ganjil/genap dan nilai counter di tengah layar
3. Column untuk menampilkan tulisan ganjil/genap dan nilai counter dalam satu kolom
4. Text untuk menampilkan teks ganjil, genap, dan nilai counter serta memberinya warna
5. Row untuk membungkus kedua tombol dalam suatu baris
6. FloatingActionButton untuk membuat tombol increment dan decrement
7. Icon untuk menampilkan gambar + dan - pada tombol
8. Visibility untuk mengatur apakah tombol - terlihat atau tidak

# C. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah function yang memberi tahu framework bahwa ada perubahan pada state suatu widget. Framework kemudian akan membangun ulang widget yang bersangkutan dan childnya.

# D. Jelaskan perbedaan antara const dengan final.
Const dan final memiliki kegunaan yang sama pada dart, yaitu untuk membuat nilai suatu variabel konstan dan tidak bisa diubah. Perbedaannya adalah const hanya bisa digunakan untuk variabel yang nilainya diketahui saat compile time. Sementara itu, final bisa digunakan untuk variabel yang nilainya baru diketahui saat runtime.

# E. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

## E.1. Tugas Utama

1. Mengubah title myhomepage menjadi "Program Counter"
2. Mengubah widget "you have clicked the button" menjadi pilihan "genap" atau "ganjil" menggunakan ternary operator
3. Menambahkan textstyle berupa warna untuk masing-masing tulisan "Genap" dan "Ganjil"
4. Menambahkan method decrementCounter yang akan mengurangi counter ketika tombol decrement dipencet bila nilai counter lebih dari 0
5. Mengubah floatingActionButton menjadi suatu Row yang berisi 2 tombol, satu untuk increment counter dan satunya lagi untuk decrement counter
6. Mengatur alignment Row floatingActionButton menjadi CrossAxisAlignment.end sehingga berada di paling bawah dan MainAxisAlignment.spaceBetween sehingga kedua tombol memiliki jarak secara horizontal

## E.2. Tugas Bonus
1. Membungkus tombol decrement dalam widget visibility dengan nilai visible berupa counter tidak bernilai 0

# Tugas 8

# A. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Misalkan stack sudah berisi page 1. Bila melakukan navigator.push page 2 ke stack, maka stack akan berisi page 1 dan page 2. Sementara itu, bila melakukan Navigator.pushReplacement page 2 ke stack, maka page 2 akan menggantikan page 1 di dalam stack, sehingga hanya ada page 2.

# B. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Drawer untuk membuat drawer pada tiap halaman yang berisi link ke halaman-halaman lainnya 
2. Form untuk membuat form pengisian data budget
3. SingleChildScrollView untuk membuat widget yang bisa discroll
4. TextFormField untuk membuat textfield input judul dan nominal budget
5. DropdownButtonFormField untuk membuat dropdown jenis budget
6. Navigator untuk routing page
7. Card untuk memetakan data-data budget

# C. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onPressed
2. onSaved
3. onChanged
4. onTap

# D. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator menggunakan stack untuk menentukan halaman yang ditunjukkan. Ketika melakukan push, halaman yang ditunjukkan akan diganti oleh halaman yang baru. Sementara itu, ketika melakukan pop, halaman yang sekarang akan digantikan oleh halaman sebelumnya yang berada lebih bawah pada stack.

# E. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat dua file dart baru, yaitu tambah_budget dan data_budget lalu membuat stateful widget awal dan scaffold untuk keduanya
2. Menambahkan drawer pada scaffold ketiga file yang memiliki child ListTile yang akan routing ke masing-masing file
3. Menjadikan body scaffold tambah_budget menjadi form dengan key berupa GlobalKey<FormState>
4. Menambahkan TextFormField judul, TextFormField nominal, dan DropdownButton jenis ke dalam form tersebut
5. Membuat variabel yang menyimpan nilai-nilai dari field dan dropdown tersebut
6. Membuat file budget_model yang berisi model penyimpanan budget dan listbudget pada data_budget yang akan menyimpan objek-objek budget tersebut
7. Menambahkan TextButton pada form yang akan membuat objek budget baru yang akan disimpan dalam listbudget
8. Memetakan data-data budget ke dalam card-card yang berada dalam satu kolom untuk menunjukkannya pada data_budget