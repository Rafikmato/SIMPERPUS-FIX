<?php
include 'app/controller/admin/post.php';
?>
<div class="page-wrapper">
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title"><i class="<?= $icon ?>"></i> <?= $title ?></h4>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <?php
        if (isset($_SESSION['msg_simpan_buku'])) {
        ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <span class="fe fe-check fe-16 mr-2"></span> <?= flash('msg_simpan_buku'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php
        }
        ?>
        <?php
        if (isset($_SESSION['msg_hapus_buku'])) {
        ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <span class="fe fe-check fe-16 mr-2"></span> <?= flash('msg_hapus_buku'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php
        }
        ?>
        <?php
        if (isset($_SESSION['msg_edit_buku'])) {
        ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <span class="fe fe-check fe-16 mr-2"></span> <?= flash('msg_edit_buku'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php
        }
        ?>
        <?php
        if (isset($_SESSION['msg_edit_jumlah_buku'])) {
        ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <span class="fe fe-check fe-16 mr-2"></span> <?= flash('msg_edit_jumlah_buku'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php
        }
        ?>

        <!-- batas -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-md-flex align-items-center">
                            <div>
                                <h4 class="card-title">Perpustakaan</h4>
                                <h5 class="card-subtitle"><?= $title ?></h5>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <!-- column -->
                            <div class="col-lg-12">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalInputBuku">
                                    <i class="fas fa-plus-circle"></i> Tambah Data
                                </button>
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal">
                                    <i class="fas fa-print"></i> Cetak
                                </button>   
                                <br><br>
                                <table class="table" id="datatable1">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Kode ISBN</th>
                                            <th>Judul Buku</th>
                                            <th>Jenis Buku</th>
                                            <th>Kategori</th>
                                            <th>Klasifikasi</th>
                                            <th>Kelas</th>
                                            <th>Pengarang</th>
                                            <th>Penerbit</th>
                                            <th>Jumlah</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php tampil_data_buku($mysqli); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- batas -->

        <!-- batas -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-md-flex align-items-center">
                            <div>
                                <h4 class="card-title">Perpustakaan</h4>
                                <h5 class="card-subtitle">History Buku</h5>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <!-- column -->
                            <div class="col-lg-12">
                                <table class="table" id="datatable2">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Kode ISBN</th>
                                            <th>Judul Buku</th>
                                            <th>Mata Pelajaran</th>
                                            <th>Jumlah</th>
                                            <th>Waktu Input</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php tampil_history_buku($mysqli); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- batas -->
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalInputBuku" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Input Data Buku</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="" method="post">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Kode ISBN</label>
                                    <input type="text" class="form-control" name="kode_isbn" placeholder="Masukkan Kode ISBN" required>
                                </div>

                                <!-- <div class="form-group">
                                    <label>Kode Buku</label>
                                    <input type="text" class="form-control" name="kode_buku" placeholder="Masukkan Kode Buku" required>
                                </div> -->

                                <div class="form-group">
                                    <label>Judul Buku</label>
                                    <input type="text" class="form-control" name="judul_buku" placeholder="Masukkan Judul Buku" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Kategori Buku</label>
                                    <select name="kategori" id="kategori" class="form-control" onchange="pilihKategori()">
                                        <option value="" hidden>-Pilih Kategori-</option>
                                        <option value="1">Mata Pelajaran</option>
                                        <option value="0">Fiksi</option>
                                        <option value="2">Non Fiksi</option>
                                        <option value="3">Referensi</option>
                                        <option value="4">Ilmu Murni</option>
                                    </select>
                                </div>

                                
                                <div class="form-group" id="klasifikasi-mp" style="display: none;">
                                    <label for="">Klasifikasi Buku Mata Pelajaran</label>
                                    <select name="klasifikasi-mp" class="form-control">
                                        <option value="" hidden>-Pilih Klasifikasi-</option>
                                        <option value="1">Buku Pegangan Guru</option>
                                        <option value="2">Buku Pegangan Siswa</option>
                                    </select>
                                </div>
                                
                                <div class="form-group" id="kelaso" style="display: none;">
                                    <label for="">Kelas</label>
                                    <select name="kelaso" class="form-control">
                                        <option value="" hidden>-Pilih Kelas-</option>
                                        <option value="VII">VII</option>
                                        <option value="VIII">VIII</option>
                                        <option value="IX">IX</option>
                                    </select>
                                </div>

                                <div class="form-group" id="klasifikasi" style="display: none;">
                                    <label for="">Mata Pelajaran</label>
                                    <select name="klasifikasi" class="form-control">
                                        <option value="" hidden>-Pilih Mata Pelajaran-</option>
                                        <?php
                                        $sql_klasif = $mysqli->query("SELECT * FROM klasifikasi where kode_klasifikasi <= 1500");
                                        while ($row_klasif = $sql_klasif->fetch_assoc()) {
                                            echo "
                                                    <option value='$row_klasif[kode_klasifikasi]'>$row_klasif[klasifikasi]</option>
                                                ";
                                        }
                                        ?>
                                    </select>
                                </div>

                                <!-- <div class="form-group" id="m-pelajaran" style="display: none;">
                                    <label for="">Mata Pelajaran</label>
                                    <select name="m-pelajaran" class="form-control">
                                        <option value="" hidden>-Pilih Mata Pelajaran-</option>
                                        <option value="ipa">IPA</option>
                                        <option value="ips">IPS</option>
                                        <option value="bindo">Bahasa Indonesia</option>
                                        <option value="bing">Bahasa Inggris</option>
                                        <option value="pkn">PPKN</option>
                                        <option value="agama">Agama</option>
                                        <option value="senbud">Seni Budaya</option>
                                        <option value="agama">Sejarah Indonesia</option>
                                        <option value="agama">Agama</option>
                                    </select>
                                </div> -->

                                <div class="form-group" id="klasifikasi-f" style="display: none;">
                                    <label for="">Klasifikasi Buku Fiksi</label>
                                    <select name="klasifikasi-f" class="form-control">
                                        <option value="" hidden>-Pilih Klasifikasi Buku Fiksi-</option>
                                        <?php
                                        $sql_klasif = $mysqli->query("SELECT * FROM klasifikasi where kode_klasifikasi > 1500 and kode_klasifikasi < 2500");
                                        while ($row_klasif = $sql_klasif->fetch_assoc()) {
                                            echo "
                                                    <option value='$row_klasif[kode_klasifikasi]'>$row_klasif[klasifikasi]</option>
                                                ";
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group" id="non_fiksi" style="display: none;">
                                    <label for="">Klasifikasi Buku Non Fiksi</label>
                                    <select name="non_fiksi" class="form-control">
                                        <option value="" hidden>-Pilih Klasifikasi Buku Non Fiksi-</option>
                                        <?php
                                        $sql_klasif = $mysqli->query("SELECT * FROM klasifikasi where kode_klasifikasi > 2500 and kode_klasifikasi < 3000");
                                        while ($row_klasif = $sql_klasif->fetch_assoc()) {
                                            echo "
                                                    <option value='$row_klasif[kode_klasifikasi]'>$row_klasif[klasifikasi]</option>
                                                ";
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group" id="referensi" style="display: none;">
                                    <label for="">Klasifikasi Buku Referensi</label>
                                    <select name="referensi" class="form-control">
                                        <option value="" hidden>-Pilih Klasifikasi Buku Referensi-</option>
                                        <?php
                                        $sql_klasif = $mysqli->query("SELECT * FROM klasifikasi where kode_klasifikasi > 3000 and kode_klasifikasi < 3500");
                                        while ($row_klasif = $sql_klasif->fetch_assoc()) {
                                            echo "
                                                    <option value='$row_klasif[kode_klasifikasi]'>$row_klasif[klasifikasi]</option>
                                                ";
                                        }
                                        ?>
                                    </select>
                                </div>
                                
                                <div class="form-group" id="murni" style="display: none;">
                                    <label for="">Klasifikasi Buku Ilmu Murni</label>
                                    <select name="murni" class="form-control">
                                        <option value="" hidden>-Pilih Klasifikasi Buku Ilmu Murni-</option>
                                        <?php
                                        $sql_klasif = $mysqli->query("SELECT * FROM klasifikasi where kode_klasifikasi > 3500");
                                        while ($row_klasif = $sql_klasif->fetch_assoc()) {
                                            echo "
                                                    <option value='$row_klasif[kode_klasifikasi]'>$row_klasif[klasifikasi]</option>
                                                ";
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Jumlah</label>
                                    <input type="number" class="form-control" name="jumlah_buku" placeholder="Masukkan Jumlah Buku" required>
                                </div>
                                <div class="form-group">
                                    <label>Harga Satuan</label>
                                    <input type="number" class="form-control" name="harga_satuan" placeholder="Masukkan Harga Satuan" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Pengarang</label>
                                    <input type="text" class="form-control" name="pengarang" placeholder="Masukkan Pengarang">
                                </div>
                                <div class="form-group">
                                    <label>Penerbit</label>
                                    <input type="text" class="form-control" name="penerbit" placeholder="Masukkan Penerbit">
                                </div>
                                <div class="form-group">
                                    <label>Tempat Terbit</label>
                                    <input type="text" class="form-control" name="tempat_terbit" placeholder="Masukkan Tempat Terbit">
                                </div>
                                <div class="form-group">
                                    <label>Tahun Terbit</label>
                                    <input type="text" class="yearpicker form-control" name="tahun_terbit" placeholder="Masukkan Tahun Terbit">
                                </div>
                                <div class="form-group">
                                    <label>Jilid Edisi</label>
                                    <input type="text" class="form-control" name="jilid_edisi" placeholder="Masukkan Jilid Edisi">
                                </div>
                                <div class="form-group">
                                    <label>Sumber Dana</label>
                                    <input type="text" class="form-control" name="sumber_dana" placeholder="Masukkan Sumber Dana" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" name="simpan_buku" class="btn btn-primary"><i class="fas fa-save"></i> Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Cetak Data Buku</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="cetak_buku" method="post" target="_BLANK">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Pilih Kategori</label>
                            <select name="kat" class="form-control">
                                <option value="" hidden>-Pilih Kategori-</option>
                                <option value="1">Mata Pelajaran</option>
                                <option value="0">Fiksi</option>
                                <option value="2">Non Fiksi</option>
                                <option value="3">Referensi</option>
                                <option value="4">Ilmu Murni</option>
                                <option value="5">Cetak Keseluruhan</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" name="simpan_buku" class="btn btn-primary"><i class="fas fa-print"></i> Cetak</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function pilihKategori() {
            var kategori = document.getElementById("kategori").value;
            var klasifikasi = document.getElementById("klasifikasi");
            var kelaso = document.getElementById("kelaso");
            var klasifikasi_f = document.getElementById("klasifikasi-f");
            var klasifikasi_mp = document.getElementById("klasifikasi-mp");
            var non_fiksi = document.getElementById("non_fiksi");
            var referensi = document.getElementById("referensi");
            var murni = document.getElementById("murni");

                console.log(kategori)

            if(kategori === '1'){
                klasifikasi.style.display = "block";
                kelaso.style.display = "block";
                klasifikasi_mp.style.display = "block";
                klasifikasi_f.style.display = "none";
                non_fiksi.style.display = "none";
                referensi.style.display = "none";
                murni.style.display = "none";
            }else if (kategori === '0'){
                klasifikasi.style.display = "none";
                klasifikasi_mp.style.display = "none";
                kelaso.style.display = "none";
                klasifikasi_f.style.display = "block";
                non_fiksi.style.display = "none";
                referensi.style.display = "none";
                murni.style.display = "none";
            }else if (kategori === '2'){
                klasifikasi.style.display = "none";
                klasifikasi_mp.style.display = "none";
                kelaso.style.display = "none";
                klasifikasi_f.style.display = "none";
                non_fiksi.style.display = "block";
                referensi.style.display = "none";
                murni.style.display = "none";
            }else if (kategori === '3'){
                klasifikasi.style.display = "none";
                klasifikasi_mp.style.display = "none";
                kelaso.style.display = "none";
                klasifikasi_f.style.display = "none";
                non_fiksi.style.display = "none";
                referensi.style.display = "block";
                murni.style.display = "none";
            }else if (kategori === '4'){
                klasifikasi.style.display = "none";
                klasifikasi_mp.style.display = "none";
                kelaso.style.display = "none";
                klasifikasi_f.style.display = "none";
                non_fiksi.style.display = "none";
                referensi.style.display = "none";
                murni.style.display = "block";
            }
        }

    </script>