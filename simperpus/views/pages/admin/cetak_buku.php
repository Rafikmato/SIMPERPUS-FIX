<?php
$id = $_POST['kat'];

// Require composer autoload
require_once  'public/vendor/autoload.php';
// Create an instance of the class:
function tgl_indo($tanggal){
	$bulan = array (
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
 
	return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
}
$mpdf = new \Mpdf\Mpdf([
    'mode' => 'utf-8',
    'orientation' => 'L'
]);

// <img src="public/assets/images/bonbol.png" align="right" width="75px" height="75px">

// <img src="public/assets/images/tutwuri.png" align="left" width="75px" height="75px">

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
    <h3>LAPORAN DATA BUKU</h3>
</div>
<table border="1" style="border-collapse:collapse; width:100%;" cellpadding="8">
    <thead>
        <tr>
            <th>No</th>
            <th>Kode ISBN</th>
            <th>Judul Buku</th>
            <th>Jenis Buku</th>
            <th>Klasifikasi</th>
            <th>Kelas</th>
            <th>Pengarang</th>
            <th>Penerbit</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
        </td>
    </thead>
    <tbody>
';
$nomor = 1;

if($id != 5){
    $query = $mysqli->query("SELECT * FROM buku JOIN klasifikasi ON buku.kode_klasifikasi = klasifikasi.kode_klasifikasi WHERE kategori_buku ='$id'");
}else{
    $query = $mysqli->query("SELECT * FROM buku JOIN klasifikasi ON buku.kode_klasifikasi = klasifikasi.kode_klasifikasi");
}

while($row = $query->fetch_object()){

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

$html .= '
    <tr>
        <td>'.$nomor++.'</td>
        <td>'.$row->kode_isbn.'</td>
        <td>'.$row->judul_buku.'</td>
        <td>'.$kato.'</td>
        <td>'.$row->klasifikasi.'</td>
        <td>'.$row->kelas.'</td>
        <td>'.$row->pengarang.'</td>
        <td>'.$row->penerbit.'</td>
        <td>'.$row->jumlah_buku.'</td>
        <td></td>
    </tr>
';
}
$html .= '
</tbody>
</table><br>
<div>Total Data : '.mysqli_num_rows($query).'<div>
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

$encryption = crypt("data_buku", "heCTast");
$file = $encryption.'.pdf';

$mpdf->WriteHTML($html);

// Output a PDF file directly to the browser
$mpdf->Output($file, 'I');

// .date("d/m/Y", strtotime($row->tanggal_input)).
?>