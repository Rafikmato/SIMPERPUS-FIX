<?php
error_reporting(0);
include 'simperpus/app/env.php';
include 'simperpus/app/session.php';
    session_start();
        // echo $_SESSION['token'];
    if(!isset($_SESSION['token'])){
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SIMPERPUS</title>
        <link rel="stylesheet" href="style.css">
        <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    </head>
<body>
    <header>
        <div id="topnav">
            <img src="logo.png" alt="">
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="#visi-misi">Visi Misi</a></li>
                <li><a href="#galeri">Galeri</a></li>
            </ul>
            <a id="simperpus" href="simperpus/index.php">SIMPERPUS</a>
        </div>
        <div id="banner">
            <div class="banner-content">
                <h1>Selamat Datang di <br> Sistem Informasi Manajemen Perpustakaan <br> <span>SMP Negeri 1 Kabila</span> </h1>
                <p></p>
                <a href="#kepsek">Selengkapnya <i class="fas fa-caret-right"></i></a>
            </div>
        </div>
    </header>
    <main>
        <section id="kepsek">
            <div class="kepsek-foto">
                <h3 class="keps-title"><b>Kepala Sekolah SMP Negeri 1 Kabila</b></h3>
                <img src="kepsek.jpg">
                <h3>Hj. Sri Wirtawati Katili, M.Pd</h3>
                <p>Nip. 197510201999032006</p>
            </div>
            <div class="kepsek-heading">
            <h2>Kata Pengantar</h2>
                <p>SMP Negeri 1 Kabila adalah sekolah rujukan yang ada di kabupaten Bone Bolango dengan visinya Insan Cerdas dan Peduli. Sekolah Cerdik (cerdas dan terdidik) berbagai prestasi ditorehkan dari tahun ke tahun baik prestasi akademik maupun nonakademik. Semua itu berkat kerja keras dan semangat dari warga sekolah baik guru, tenaga admistrasi, peserta didik dan orang tua serta masyarakat sekolah. Dukungan pemerintah daerah serta perguruan tinggi yang ada di Gorontalo sangat berpengaruh terhadap kemajuan sekolah mulai dari tersedianya berbagai fasilitas sekolah secara fisik juga program peningkatan mutu pendidik dan tenaga pendidik. Berbagai kerja sama dengan perguruan tinggi untuk meningkatkan kualitas terdidik terus menjadi dari tahun ke tahun. <br><br> Saya selaku pimpinan SMP Negeri 1 Kabila sangat bersyukur dan berterima kasih atas segala program UNG yang sangat membantu peningkatan kualitas sekolah, dengan adanya program Sistem Informasi Manajemen Perpustakaan yang dilakukan oleh mahasiswa jurusan Teknik Informatika di SMP Negeri 1 Kabila.</p>
            </div>
        </section>
        <section id="visi-misi">
            <h1>Visi dan Misi SMP Negeri 1 Kabila</h1>
            <!-- The Modal -->
            <div id="myModal" class="modal">
                    <span class="close">&times;</span>
                    <img class="modal-content" id="img01">
                    <div id="caption"></div>
                </div>
            <div class="visi card">
                <h2>Visi</h2>
                <p>Insan, Cerdas, dan Peduli</p>
            </div>
            <div class="misi card">
                <h2>Misi</h2>
                <ol>
                    <li>Terwujudnya lulusan yang cerdas, dan kompetitif</li>
                    <li>Membina peserta didik dalam kegiatan akademik dan non-akademik dengan memperhatikan kesetaraan gender</li>
                    <li>Membina warga sekolah dalam kegiatan keagamaan untuk memperkuat karakter peserta didik</li>
                    <li>Membina kegiatan-kegiatan yang menunjang berkembangnya penguasaan teknologi mutakhir</li>
                    <li>Menerapkan manajemen partisipatif dengan melibatkan seluruh warga sekolah dan kelompok kepentingan yang terkait dengan sekolah</li>
                    <li>Mengembangkan dan melaksanakan kurikulum yang terintegrasi dengan lingkungan hidup</li>
                    <li>Melaksanakan pengembangan proses pembelajaran berbasis lesson study</li>
                    <li>Menyiapkan alat peraga atau alat bantu mengajar yang memadai dan bermutu</li>
                    <li>Menata lingkungan sekolah yang kondusif sebagai sumber belajar</li>
                    <li>Menciptakaan lingkungan sekolah yang asri, aman, sehat, sejuk, rapi dan indah</li>
                </ol>
            </div>
        </section>
        <section id="galeri">
            <div class="galeri-content">
                <h1>Galeri SMP Negeri 1 Kabila</h1>
            </div>

            <div class="cards">
                <!-- Trigger the Modal -->
                <div class="galeri-card">
                    <img src="gallery/1.jpg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/1.jpg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/2.jpg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/2.jpg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/3.jpg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/3.jpg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/4.jpg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/4.jpg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>

                <!-- Trigger the Modal -->
                <div class="galeri-card">
                    <img src="gallery/5.jpg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/5.jpg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/6.jpg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/6.jpg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/7.jpg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/7.jpg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/8.jpg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/8.jpg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>
                
                <!-- Trigger the Modal -->
                <div class="galeri-card">
                    <img src="gallery/9.jpeg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/9.jpeg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/10.jpg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/10.jpg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/11.jpeg" alt="Paduan Suara SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/11.jpeg', 'Paduan Suara SMPN 1 Kabila')">Lihat</button>
                </div>
                <div class="galeri-card">
                    <img src="gallery/12.jpeg" alt="Siswa SMPN 1 Kabila">
                    <button onclick="viewModal('gallery/12.jpeg', 'Siswa SMPN 1 Kabila')">Lihat</button>
                </div>
            </div>
           
        </section>
    </main>
    <footer>
        <p>Copyright &copy Kelompok 1 Sistem Informasi C</p>
    </footer>
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the image and insert it inside the modal - use its "alt" text as a caption
        var modalImg = document.getElementById("img01");
        var captionText = document.getElementById("caption");
            function viewModal(img, alt){
                modal.style.display = "block";
                modalImg.src = img;
                captionText.innerHTML = alt;
            }

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() { 
        modal.style.display = "none";
        }
    </script>
</body>
</html>
<?php
}else{
?>
    <script>
        alert('Anda tidak mempunyai akses ke halaman ini!');
        window.location.href = 'http://localhost/smp1kabila/simperpus/beranda_admin';
    </script>
<?php
}
?>
