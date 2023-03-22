<?php require_once '../../../app/env.php'; ?>
<div class="form-group mt-3" id="option_anggota">
    <label>Nama Siswa</label>
    <select class="form-control opt" name="nisn" style="width: 100%;">
        <option hidden>Pilih Peminjam</option>
        <?php
            $query = $mysqli->query("SELECT * FROM anggota");
            while($row = $query->fetch_assoc()){
                echo"
                    <option value='{$row['nisn']}'>{$row['nisn']} - {$row['nama_lengkap']}</option>
                ";
            }
        ?>
    </select>
</div>
<script>
$('.opt').select2();
</script>