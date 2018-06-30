<?php
include "config.php";
$data = file_get_contents("php://input");
$dataObj = json_decode($data, true);
$mode = $dataObj['mode'];



if($mode=='update_lat_lng')
{
    //$id=$res['d_id'];
    
    
    $lat2=$dataObj['d_dest_lat'];
    $lon2=$dataObj['d_dist_lng'];

    $result = mysqli_query($mysqli, "UPDATE alec_driver SET d_dest_lat='$lat2',d_dist_lng='$lon2' WHERE d_id=1");

    $array = array('status'=>true,'message'=>'data updated Successfully...!');
    echo json_encode($array);
       exit;
}

// $mode=$_GET['mode'];
if($mode=='find_distance_and_fare')
{
$rate=10;
$result = mysqli_query($mysqli, "SELECT * FROM alec_driver");

while($res = mysqli_fetch_assoc($result))
{
    $data_n[] =$res;
    
    $lat1=$res['d_source_lat'];
    $lon1=$res['d_source_lng'];
    
    $lat2=$res['d_dest_lat'];
    $lon2=$res['d_dist_lng'];
    
   
}
 $dist = distance($lat1, $lon1, $lat2, $lon2, 'K');

  $fare =$dist *$rate;
$array = array('status'=>true,'message'=>'Travel Distance And fare Fetch Successfully...!','data'=>$data_n,'distance'=>$dist,'fare'=>$fare);
 echo json_encode($array);
    exit;
}
function distance($lat1, $lon1, $lat2, $lon2, $unit) {
    
      $theta = $lon1 - $lon2;
      $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
      $dist = acos($dist);
      $dist = rad2deg($dist);
      $miles = $dist * 60 * 1.1515;
      $unit = strtoupper($unit);
    
      if ($unit == "K") {
          return ($miles * 1.609344);
      } else if ($unit == "N") {
          return ($miles * 0.8684);
      } else {
          return $miles;
      }
    }



?>
