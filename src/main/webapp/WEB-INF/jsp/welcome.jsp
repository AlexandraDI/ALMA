<%-- 
    Document   : welcome
    Created on : Aug 21, 2020, 1:49:48 AM
    Author     : alex
--%>

<%@ include file="headWithoutLoginRegister.jsp" %>  

<%@ include file="carousel.jsp" %>


<%--
  <style>
 a-scene {
        height: 500px;
        width: 1000px;
  }

  .myEmbeddedScene {
  position: relative;
  top: 0;
  left: 0;
}
.panorama {
  position: relative;
  top: 0;
  left: 0;
}
.image2 {
  position: absolute;
  top: 30px;
  left: 920px;
  opacity: 0.6;
  height: 60px;
  width:80px;
  border-radius: 10%;
}     
  </style>
  
        <div id="myEmbeddedScene">
          <a-scene embedded>
                <img id="panorama" src="bath1.jpg" width="500" height="600"/>
                <a-sky src="#panorama"  rotation="0 -90 0"></a-sky>
          </a-scene>
          <img class="image2" src="360-small.jpg" />
        </div>
  
  <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>

--%>

<!DOCTYPE html>
<html>
    <head>
        <title>360 Degree View</title>
        <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/aframe/0.7.1/aframe.min.js"></script> -->
        <script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>


        <script src="dist/aframe-no-click-look-controls.min.js"></script> 

        <!-- <body>
                <a-scene>
                        <img id="panorama" src="images/oia.jpg" width="500" height="600"/>
                        <a-sky src="#panorama"  rotation="0 -90 0"></a-sky>
                </a-scene>
        </body> -->

        <style>
            a-scene {
                height: 500px;
                width: 1000px;
                top: 50px;
            }


            .livingRoomPanorama {
                position: relative;
                top: 0;
                left: 0;
            }

            .image2 {
                position: absolute;
                top: 230px;
                left: 920px;
                opacity: 0.6;
                height: 60px;
                width:80px;
                border-radius: 10%;
            }

            .myEmbeddedScene {
                position: relative;
                top: 0;
                left: 0;
            }

        </style>
    </head>
    <body>



        <div>
            <h4>Living Room</h4>                          
            <div id="livingRoom"> 
                <hr>
            </div>                             

            <div class="custom-file d-block">
                <input type="file" name="avatarFilename" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'livingRoomPanorama', 'livingRoom');"/>  
                <label class="custom-file-label" for="customFile">Upload</label>
            </div>            
        </div>  






    </body>

</html>

<script>

    var test = "bath1.jpg";

    function img_pathUrl(input, name, nameToDeleteOrAdd) {

        $('#' + nameToDeleteOrAdd + '').empty();
        document.getElementById(nameToDeleteOrAdd).innerHTML +=
                '<div id="myEmbeddedScene"><a-scene embedded><img id="' + name + '" src="' + (window.URL ? URL : webkitURL).createObjectURL(input.files[0]) + '" width="500" height="600"/><a-sky src="#' + name + '"  rotation="0 -90 0"></a-sky></a-scene><img class="image2" src="360-small.jpg" /></div>';
    }

    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });


</script>    