<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title>Show Songs</title>
</head>
<body>
<h1>Search For a Song</h1>

    <main role="main" class="container-fluid">
    <h1> </h1>  
    <form action = "SCsong-results.php" method = "post">
    <div class = "form-group">
    <label for ="searchtype">Select Search Terms</label>
    <select class ="form-control" id ="searchtype" name ="searchtype">
    <option value ="name">Song name</option>
    <option value ="album_title">Album Title</option>
    <option value ="genre">Genre</option>
    <option value ="artist">Artist</option> 
   

    </select>

</div>
<div class ="form-group">
    <label for ="searcterm">Enter Search Term</label>
    <input name ="searchterm" type = "text" class ="form-control" name = "searchterm" id ="searchterm" />
    

</div>
<button type ="submit" class = "btn btn-primary">Search</button>

</form>


    
    <h1>Song Catalog</h1>

<?php
    @ $db = new mysqli('localhost', 'playlist_user1', 'playlistpass1', 'soundcloudDB');


    if ($db->connect_error) {
        die('Connect Error ' . $db->connect_errno . ': ' . $db->connect_error);
    }

   //$query="SELECT * FROM songs";
    $query="SELECT name, genre, artist, album_title FROM songs";
    $result = $db->query($query);
   // echo $result-> field_count;
   
    if ($result = $db->query($query)) {

        //find size of result set
        $num_results = $result->num_rows;
        $num_fields = $result->field_count;

        echo "<table class='table table-responsive'>";
        echo "<tr>";

        //get and display field names
        $dbinfo = $result->fetch_fields();


        foreach ($dbinfo as $val) {
            echo "<th>".ucwords($val->name)."</th>";
        }

        echo "</tr>";

        while ($row = $result->fetch_row()) {
            echo "<tr>";
            for ($i=0; $i<$num_fields; $i++) {
                echo "<td>". stripslashes($row[$i])."</td>";
            }
            echo "</tr>";
        }

        $result->close();
        echo "</table>";
    }

    $db->close();

?>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
