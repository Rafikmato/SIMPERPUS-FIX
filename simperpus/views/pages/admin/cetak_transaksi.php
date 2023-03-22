<?php
if (isset($_POST['cetak_filter'])) {
    $jenis_ctk = $_POST['jenis_ctk'];
    $data_bulan = $_POST['data_bulan'];
    $data_tahun = $_POST['data_tahun'];
    // Require composer autoload
    require_once  'public/vendor/autoload.php';
    // Create an instance of the class:
    function tgl_indo($tanggal)
    {
        $bulan = array(
            1 =>   'Januari',
            'Februari',
            'Maret',
            'April',
            'Mei',
            'Juni',
            'Juli',
            'Agustus',
            'September',
            'Oktober',
            'November',
            'Desember'
        );
        $pecahkan = explode('-', $tanggal);

        // variabel pecahkan 0 = tanggal
        // variabel pecahkan 1 = bulan
        // variabel pecahkan 2 = tahun

        return $pecahkan[2] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[0];
    }
    $mpdf = new \Mpdf\Mpdf([
        'mode' => 'utf-8',
        'orientation' => 'L'
    ]);
    if($jenis_ctk == 'a'){
        if (isset($_POST['filter_data']) && $_POST['filter_data'] == "3") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN & PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query_blm = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali = '0'");
            $query_sdh = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali != '0'");
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE MONTH(tgl_pinjam) = $data_bulan OR MONTH(tgl_kembali) = $data_bulan");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->tgl_kembali == 0) {
                    $tgl_kmbli = 'Blm Dikembalikan';
                } else {
                    $tgl_kmbli = tgl_indo($row->tgl_kembali);
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Belum Dikembalikan : ' . mysqli_num_rows($query_blm) . '</div>
            <div>Sudah Dikembalikan : ' . mysqli_num_rows($query_sdh) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "2") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali != '0' AND MONTH(tgl_kembali) = $data_bulan");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . tgl_indo($row->tgl_kembali) . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "1") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali = '0' AND MONTH(tgl_pinjam) = $data_bulan");
            while ($row = $query->fetch_object()) {
                $tgl_kmbli = 'Blm Dikembalikan';

                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        }
    }else if($jenis_ctk == 'b'){
        if (isset($_POST['filter_data']) && $_POST['filter_data'] == "3") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN & PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query_blm = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali = '0'");
            $query_sdh = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali != '0'");
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE YEAR(tgl_pinjam) = $data_tahun OR YEAR(tgl_kembali) = $data_tahun");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->tgl_kembali == 0) {
                    $tgl_kmbli = 'Blm Dikembalikan';
                } else {
                    $tgl_kmbli = tgl_indo($row->tgl_kembali);
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Belum Dikembalikan : ' . mysqli_num_rows($query_blm) . '</div>
            <div>Sudah Dikembalikan : ' . mysqli_num_rows($query_sdh) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "2") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali != '0' AND YEAR(tgl_kembali) = $data_tahun");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . tgl_indo($row->tgl_kembali) . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "1") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }

            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali = '0' AND YEAR(tgl_pinjam) = $data_tahun");
            while ($row = $query->fetch_object()) {
                $tgl_kmbli = 'Blm Dikembalikan';

                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }

                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }

                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        }
    }else{
        if (isset($_POST['filter_data']) && $_POST['filter_data'] == "3") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }
    
            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN & PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query_blm = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali = '0'");
            $query_sdh = $mysqli->query("SELECT * FROM transaksi WHERE tgl_kembali != '0'");
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->tgl_kembali == 0) {
                    $tgl_kmbli = 'Blm Dikembalikan';
                } else {
                    $tgl_kmbli = tgl_indo($row->tgl_kembali);
                }
    
                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }
    
                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }
    
                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Belum Dikembalikan : ' . mysqli_num_rows($query_blm) . '</div>
            <div>Sudah Dikembalikan : ' . mysqli_num_rows($query_sdh) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "2") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }
    
            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }

            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali != '0'");
            while ($row = $query->fetch_object()) {
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }
    
                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }
    
                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . tgl_indo($row->tgl_kembali) . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Hj. Sri Wirtawati Katili, S.Pd</p>
                    <span class="nip">NIP. 197510201999032006</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
            </div>
            ';
        } else if (isset($_POST['filter_data']) && $_POST['filter_data'] == "1") {
            $html = '
            <style>
            .head {
                margin-bottom: 6rem;
            }
    
            .nama {
                text-decoration: underline;
                font-weight: bold;
                margin-bottom: 0.5rem;
            }

            .img_kiri {
                margin-left: 25px;
                width: 120px;
                height: 80px;
                float: left;
            }
            
            .img_kanan {
                margin-right: 25px;
                width: 80px;
                height: 80px;
                float: right;
            }
            
            .hrf1 {
                font-size: 4.5mm;
            }
            
            .hrf2 {
                font-size: 3.8mm;
            }
            
            hr {
                margin-bottom: 15px;
                width: 95%;
            }
            
            </style>
            <div class="img_kiri">
                <img src="public/assets/images/bonbol.png">
            </div>
            <div class="img_kanan">
                <img src="public/assets/images/tutwuri.png">
            </div>
            <div class="hrf1" style="text-align: center;">
                DINAS PENDIDIKAN DAN KEBUDAYAAN KABUPATEN BONE BOLANGO <br>
                SEKOLAH MENENGAH PERTAMA <br>
                <b>SMP NEGERI 1 KABILA</b>
            </div>
            <div class="hrf2" style="text-align: center;">
                Jl. Nani Wartabone 39, Telp. (0435) 824628, Oluhuta Kabila 96183<br>
                e-Mail : smpnkabila@yahoo.co.id
            </div>
            <hr>
            <div style="text-align: center;">
                <h3>LAPORAN DATA PEMINJAMAN & PENGEMBALIAN BUKU</h3>
            </div>
            <table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Buku</th>
                        <th>Jenis Buku</th>
                        <th>Kategori</th>
                        <th>Nama Peminjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Jatuh Tempo</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterangan</th>
                    </tr>
                </thead>
                <tbody>
            ';
            $nomor = 1;
            $query = $mysqli->query("SELECT * FROM transaksi JOIN buku ON transaksi.id_buku = buku.id_buku WHERE tgl_kembali = '0'");
            while ($row = $query->fetch_object()) {
                $tgl_kmbli = 'Blm Dikembalikan';
    
                if ($row->jenis == 1) {
                    $kato = 'Buku Pegangan Guru';
                } else if ($row->jenis == 2) {
                    $kato = 'Buku Pegangan Siswa';
                } else if ($row->jenis == 0) {
                    $kato = 'Buku Fiksi';
                } else if ($row->jenis == 3) {
                    $kato = 'Buku Non Fiksi';
                }else if ($row->jenis == 4) {
                    $kato = 'Buku Referensi';
                }else if ($row->jenis == 5) {
                    $kato = 'Buku Ilmu Murni';
                }else {
                    $kato = '-';
                }
            
                if($row->kategori_buku == 0){
                    $kate = 'Fiksi';
                }elseif($row->kategori_buku == 1){
                    $kate = 'Mata Pelajaran';
                }elseif($row->kategori_buku == 2){
                    $kate = 'Non Fiksi';
                }elseif($row->kategori_buku == 3){
                    $kate = 'Referensi';
                }elseif($row->kategori_buku == 4){
                    $kate = 'Murni';
                }

                if ($row->denda == 0) {
                    $denda = '0';
                } else {
                    $denda = $row->denda;
                }
    
                if ($row->nisn == '0') {
                    $query_guru = $mysqli->query("SELECT * FROM guru WHERE nuptk ='$row->nuptk'");
                    $row_guru = $query_guru->fetch_object();
                    $nm = $row_guru->nama_lengkap;
                } else if ($row->nuptk == '0') {
                    $query_anggota = $mysqli->query("SELECT * FROM anggota WHERE nisn ='$row->nisn'");
                    $row_anggota = $query_anggota->fetch_object();
                    $nm = $row_anggota->nama_lengkap;
                }
    
                $html .= '
                <tr>
                    <td>' . $nomor++ . '</td>
                    <td>' . $row->judul_buku . '</td>
                    <td>' . $kato . '</td>
                    <td>' . $kate . '</td>
                    <td>' . $nm . '</td>
                    <td>' . tgl_indo($row->tgl_pinjam) . '</td>
                    <td>' . tgl_indo($row->tgl_jatuh_tempo) . '</td>
                    <td>' . $tgl_kmbli . '</td>
                    <td>Rp. ' . number_format($denda) . '</td>
                </tr>
            ';
                $ttl += $row->denda;
            }
            $html .= '
            </tbody>
            </table><br>
            <div>Total Data : ' . mysqli_num_rows($query) . '</div>
            <div>Total Denda : Rp. ' . number_format($ttl, 2) . '</div>
            <div style="width: 100%;text-align: center;margin-top: 5rem;">
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Kepala SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Surtin Botutihe, S.Pd</p>
                    <span class="nip">NIP. 196304291985022001</span>
                </div>
                <div style="width: 50%;float: left;">
                    <p class="head"><b>Pengelola Perpustakaan SMP Negeri 1 KABILA</b></p>
                    <p class="nama">Wiwin S. Maksud, S.Pd</p>
                    <span class="nip">NIP. 198001022007012027</span>
                </div>
            </div>
            ';
        }
    }

    $mpdf->WriteHTML($html);

    // Output a PDF file directly to the browser
    $mpdf->Output();
} else {

?>
    <script>
        alert("Maaf anda tidak dapat menelusuri file melalui URL !");
        document.location.href = "peminjaman";
    </script>
<?php
}
