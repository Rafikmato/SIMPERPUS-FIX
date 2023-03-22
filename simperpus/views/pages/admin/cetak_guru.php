

<?php
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
    margin-bottom: 20px;
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
    <h3>LAPORAN DATA GURU</h3>
</div>
<table border="1" style="border-collapse:collapse; width:100%;font-size:0.8rem;" cellpadding="8">
    <thead>
        <tr>
            <th>No</th>
            <th>NIP</th>
            <th>Nama Lengkap</th>
            <th>No HP</th>
            <th>Tempat - Tanggal Lahir</th>
            <th>Jenis Kelamin</th>
            <th>Jabatan</th>
            <th>Tahun Masuk</th>
        </td>
    </thead>
    <tbody>
';
$nomor = 1;
$query = $mysqli->query("SELECT * FROM guru");
while($row = $query->fetch_object()){


$html .= '
    <tr>
        <td>'.$nomor++.'</td>
        <td>'.$row->nuptk.'</td>
        <td>'.$row->nama_lengkap.'</td>
        <td>'.$row->no_hp.'</td>
        <td>'.$row->tempat_lahir.' - '.tgl_indo($row->tgl_lahir).'</td>
        <td>'.$row->jk.'</td>
        <td>'.$row->jabatan.'</td>
        <td>'.$row->thn_masuk.'</td>
    </tr>
';


}
$html .= '
</tbody>
</table><br>
<div>Total Data : '.mysqli_num_rows($query).'</div>
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

$mpdf->WriteHTML($html);

// Output a PDF file directly to the browser
$mpdf->Output();