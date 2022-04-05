$MyServer = "127.0.0.1"
$MyPort = "5432"
$MyDB = "postgres"
$MyUid = "postgres"
$MyPass = "asdfgh"

$DBConnectionString = "Driver={PostgreSQL UNICODE(x64)};Server=$MyServer;Port=$MyPort;Database=$MyDB;Uid=$MyUid;Pwd=$MyPass;"
$DBConn = New-Object System.Data.Odbc.OdbcConnection;
$DBConn.ConnectionString = $DBConnectionString;
$DBConn.Open();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "SELECT * FROM engine e where engine_id  < 5;";
$reader = $DBCmd.ExecuteReader();

Clear-Host
try {
    while ($reader.Read()) {
       $reader.GetName(0) +   ": " + $reader.GetValue(0) + ", " + $reader.GetName(1) +   ": " + $reader.GetValue(1)
      
    }
}
finally {
    $reader.Close()
    $DBConn.Close(); 
}


