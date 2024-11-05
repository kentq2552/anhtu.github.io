<?php
class DBclasses
{
    public $conn;

    public function connect()
    {
        if (!$this->conn) {
            $this->conn = mysqli_connect("localhost", "root", "", "webbanhoa");

            if (!$this->conn) {
                die("Connection failed: " . mysqli_connect_error());
            }

            mysqli_query($this->conn, "SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
            mysqli_set_charset($this->conn, "utf8");
        }
    }

    public function disconnect()
    {
        if ($this->conn) {
            mysqli_close($this->conn);
            $this->conn = null; // Đặt lại $conn về null sau khi đóng
        }
    }

    public function query($sql)
    {
        $this->connect(); // Kết nối
        $result = mysqli_query($this->conn, $sql);
        return $result; // Trả về kết quả
    }
}
?>
