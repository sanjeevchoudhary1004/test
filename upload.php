
<!-- <?php
//phpinfo();
if(isset($_FILES['image']))
{
	$date=date('Y-m-d');
	$file_tmp=$_FILES['image']['tmp_name'];
	$file_name=$_FILES['image']['name'];
	$file_size=$_FILES['image']['size'];
	$ext=explode('.',$_FILES['image']['name']);
	$file_ext=(end($ext));
	$allowed_type= array('PNG','png','JPG','jpg','JPEG','jpeg','GIF','gif');
	//$ext1 = pathinfo($file_ext, PATHINFO_EXTENSION);
	if(!in_array($file_ext,$allowed_type))
	{
		$err_msg="Invalid file";

	}
	if($file_size>2097152)
	{
		$err_msg="File size not more than 2MB";
	}
	if(empty($err_msg))
	{
		$servername = "localhost";
        $database = "users_tbl";
        $username = "root";
        $password = "";
		$conn = mysqli_connect($servername, $username, $password, $database);
		move_uploaded_file($file_tmp,"uploads/".$file_name);
		$sql_ins="insert into users(Name,Password,Email,Date,Profile_pic) value('Alia','alia','alia@gmail.com','$date','$file_name')";
		$res=mysqli_query($conn,$sql_ins) ;
		if($res)
			echo "File inserted";
		else
			echo "Not inserted";
		
	}
	else{
		echo $err_msg;
	}
}



?> -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
 $('#uploadImage').submit(function(event){
  if($('#image').val())
  {
   event.preventDefault();
   $('#loader-icon').show();
   $('#targetLayer').hide();
   $(this).ajaxSubmit({
    target: '#targetLayer',
    beforeSubmit:function(){
     $('.progress-bar').width('50%');
    },
    uploadProgress: function(event, position, total, percentageComplete)
    {
     $('.progress-bar').animate({
      width: percentageComplete + '%'
     }, {
      duration: 1000
     });
    },
    success:function(){
     $('#loader-icon').hide();
     $('#targetLayer').show();
    },
    resetForm: true
   });
  }
  return false;
 });
});
</script>
<!DOCTYPE html>
 <html>
 <head>
  <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="http://malsup.github.com/jquery.form.js"></script> 
 </head>
 <body>
  <div class="container">
   <br />
   <h3 align="center">File Upload Progress Bar </h3>
   <br />
   <div class="panel panel-default">
    <div class="panel-heading"><b>Ajax File Upload Progress Bar </b></div>
    <div class="panel-body">
     <form id="uploadImage" action="upload_file.php" method="post">
      <div class="form-group">
       <label>File Upload</label>
       <input type="file" name="image" id="image" />
      </div>
      <div class="form-group">
       <input type="submit" id="uploadSubmit" value="Upload" class="btn btn-info" />
      </div>
      <div class="progress">
       <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div id="targetLayer" style="display:none;"></div>
     </form>
     <div id="loader-icon" style="display:none;"><img src="loader.gif" /></div>
    </div>
   </div>
  </div>
 </body>
</html>


