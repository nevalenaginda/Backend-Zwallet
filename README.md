# Zwallet

Zwallet Web-Ku adalah Aplikasi E-Wallet dengan keamanan PIN dan Password sehingga user dapat bertransaksi dengan aman. Ini adalah layanan backend untuk aplikasi ini. Anda dapat melihat layanan frontend [disini](https://github.com/nevalenaginda/Frontend-Zwallet).

## Modules

- **[Express](https://expressjs.com/)**
- **[Nodemon](https://www.npmjs.com/package/nodemon)**
- **[MySQL2](https://www.npmjs.com/package/mysql2)**
- **[Cors](https://www.npmjs.com/package/cors)**
- **[Dotenv](https://www.npmjs.com/package/dotenv)**
- **[Morgan](https://www.npmjs.com/package/morgan)**
- **[Bcrypt](https://www.npmjs.com/package/bcrypt)**
- **[JWT](https://www.npmjs.com/package/jsonwebtoken)**
- **[Multer](https://www.npmjs.com/package/multer)**
- **[Nodemailer](https://www.npmjs.com/package/nodemailer)**
- **[CookieParser](https://www.npmjs.com/package/cookie-parser)**


### Tatacara

1. Silahkan download file ini.
2. Silahkan buka file ini dalam satu folder di text editor  seperti VS Code atau sejenisnya
3. Pastikan import database yang ada didalam file ```MySql``` sebagai database di MySql
4. Silahkan ```CREATE``` file ```.env``` lalu buka file tersebut
5. Patikan isi ``` PORT ``` yang akan kamu gunakan di file ``` .env ``` sesuaikan juga dengan yang ada di ``` app.listen ``` pada file ``` app.js ```
6. Silahkan ganti nama database, user dan password pada file ``` .env ``` sesuai dengan MySql kalian. Umumnya seperti berikut:
```
PORT = (Port yang kamu gunakan, misal 5000)
DB_HOST = localhost
DB_USER = root
DB_PASSWORD = 
JWT_SECRET= (Misal AsxW123)
FROM_EMAIL = (Email yang kamu gunakan untuk mengirim pesan verifikasi)
EMAIL_PASS = (Password email kamu, misal Password1234#)
FRONTEND_PATH = (Alamat frontend kamu, misal http://localhost:3000)
```
  
Untuk pengguna OS windows biasanya bagian password di xampp itu kosong, tetapi pengguna Mac silahakn isi passwordnya.

### Penggunaan

Silahkan buka terminal pada VS Code dengan menekan tombol
```
CTRL + SHIFT + `
atau
CTRL + SHIFT + C
```
Kemudian ketikan text berikut
```
"npm install"
"npm run start" //untuk menjalankan nodemon cek di file package.json
```
guna untuk menjalankan project ini. Pastikan anda telah mengaktifkan XAMPP

---

### Dokumentasi Api
Kamu bisa melihat dokumentasi api [di sini](https://documenter.getpostman.com/view/13256965/TzRNFA6K)

---

### Frontend
Silahkan klik [di sini](https://github.com/nevalenaginda/Frontend-Zwallet)

---

### Deploy
Silahkan klik link berikut [ini](https://zwallet-webku-4l5mjoqpw-nevalenaginda.vercel.app/)

---

