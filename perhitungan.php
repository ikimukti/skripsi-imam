<!DOCTYPE html>
<html>

<head>
    <title>Form Data Siswa</title>
</head>

<body>
    <!-- navigasi -->
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="tambah_siswa.php">Form Data Siswa</a></li>
        <li><a href="tambah_pelanggaran.php">Form Data Pelanggaran</a></li>
        <li><a href="tambah_prestasi.php">Form Data Prestasi</a></li>
        <li><a href="tambah_master_pelanggaran.php">Form Data Master Pelanggaran</a></li>
        <li><a href="tambah_master_prestasi.php">Form Data Master Prestasi</a></li>
        <li><a href="perhitungan.php">Perhitungan Naive Bayes</a></li>
    </ul>
    <h2>Data Siswa | <?php echo (isset($_GET['prestasi']) && $_GET['prestasi'] == 'true') ? 'Prestasi' : 'Pelanggaran'; ?></h2>
    <a href="perhitungan.php?pelanggaran=true">Lihat Perhitungan Pelanggaran</a> |
    <a href="perhitungan.php?prestasi=true">Lihat Perhitungan Prestasi</a>
    <br><br>
    <?php
    // Konfigurasi koneksi ke database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "skripsi-imam";

    // Membuat koneksi
    $conn = new mysqli($servername, $username, $password, $database);

    // Memeriksa koneksi
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    // Check if the 'prestasi' query parameter is set to true
    if (isset($_GET['prestasi']) && $_GET['prestasi'] == 'true') {
        $sql = "SELECT * FROM data_siswa";
        $result = $conn->query($sql);
        $count = 0;
        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>No</th><th>Nama</th><th>NIPD</th><th>Jenis Kelamin</th><th>NISN</th><th>Tempat Lahir</th><th>Tanggal Lahir</th><th>NIK</th><th>Agama</th><th>Jumlah prestasi</th><th>Total poin</th><th>Aksi</th></tr>";

            while ($row = $result->fetch_assoc()) {
                // Retrieve and display violations for the student
                $student_id = $row["id"];
                $violations_query = "SELECT poin
                FROM data_prestasi LEFT JOIN master_prestasi ON data_prestasi.prestasi_id = master_prestasi.id WHERE siswa_id = $student_id";
                $violations_result = $conn->query($violations_query);

                // jika ada data prestasi maka tampilkan
                if ($violations_result->num_rows > 0) {
                    $count++;
                    echo "<tr>";
                    echo "<td>" . $row["no"] . "</td>";
                    echo "<td>" . $row["nama"] . "</td>";
                    echo "<td>" . $row["nipd"] . "</td>";
                    echo "<td>" . $row["jenis_kelamin"] . "</td>";
                    echo "<td>" . $row["nisn"] . "</td>";
                    echo "<td>" . $row["tempat_lahir"] . "</td>";
                    echo "<td>" . $row["tanggal_lahir"] . "</td>";
                    echo "<td>" . $row["nik"] . "</td>";
                    echo "<td>" . $row["agama"] . "</td>";
                    echo "<td>" . $violations_result->num_rows . "</td>";
                    foreach ($violations_result as $violation) {
                        $total_poin += $violation['poin'];
                    }
                    echo "<td>
                        <a href='lihat_prestasi.php?id=" . $row["id"] . "'>Lihat prestasi</a> |
                        <a href='detail_siswa.php?id=" . $row["id"] . "'>Detail</a> |
                        <a href='edit_data.php?id=" . $row["id"] . "'>Edit</a> |
                        <a href='proses_delete_siswa.php?id=" . $row["id"] . "' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini?\")'>Delete</a>
                    </td>";
                    echo "</tr>";
                }
            }
            if ($count == 0) {
                echo "<tr><td colspan='11'>Tidak ada siswa yang memiliki prestasi.</td></tr>";
            }
            echo "</table>";
        } else {
            echo "Tidak ada data.";
        }
    } else {
        $sql = "SELECT * FROM data_siswa";
        $result = $conn->query($sql);
        $count = 0;
        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>No</th><th>Nama</th><th>NIPD</th><th>Jenis Kelamin</th><th>NISN</th><th>Tempat Lahir</th><th>Tanggal Lahir</th><th>NIK</th><th>Agama</th><th>Jumlah pelanggaran</th><th>Total poin</th><th>Aksi</th></tr>";

            while ($row = $result->fetch_assoc()) {
                // Retrieve and display violations for the student
                $student_id = $row["id"];
                //join table data_pelanggaran dan master_pelanggaran
                $violations_query = "SELECT poin
                FROM data_pelanggaran LEFT JOIN master_pelanggaran ON data_pelanggaran.pelanggaran_id = master_pelanggaran.id WHERE siswa_id = $student_id";
                $violations_result = $conn->query($violations_query);

                // jika ada data pelanggaran maka tampilkan
                if ($violations_result->num_rows > 0) {
                    $count++;
                    echo "<tr>";
                    echo "<td>" . $row["no"] . "</td>";
                    echo "<td>" . $row["nama"] . "</td>";
                    echo "<td>" . $row["nipd"] . "</td>";
                    echo "<td>" . $row["jenis_kelamin"] . "</td>";
                    echo "<td>" . $row["nisn"] . "</td>";
                    echo "<td>" . $row["tempat_lahir"] . "</td>";
                    echo "<td>" . $row["tanggal_lahir"] . "</td>";
                    echo "<td>" . $row["nik"] . "</td>";
                    echo "<td>" . $row["agama"] . "</td>";
                    echo "<td>" . $violations_result->num_rows . "</td>";
                    echo "<td>";
                    $total_poin = 0;
                    foreach ($violations_result as $violation) {
                        // convert string to int
                        $total_poin += $violation['poin'];
                        $total_poin = (int) $total_poin;
                    }
                    echo $total_poin;
                    echo "<td>
                        <a href='lihat_pelanggaran.php?id=" . $row["id"] . "'>Lihat pelanggaran</a> |
                        <a href='detail_siswa.php?id=" . $row["id"] . "'>Detail</a> |
                        <a href='edit_data.php?id=" . $row["id"] . "'>Edit</a> |
                        <a href='proses_delete_siswa.php?id=" . $row["id"] . "' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini?\")'>Delete</a>
                    </td>";
                    echo "</tr>";
                }
            }
            if ($count == 0) {
                echo "<tr><td colspan='11'>Tidak ada siswa yang memiliki pelanggaran.</td></tr>";
            }
            echo "</table>";
        } else {
            echo "Tidak ada data.";
        }
    }
    // Menutup koneksi
    $conn->close();
    ?>
</body>

</html>