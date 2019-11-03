     <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
      <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
      <script>

$(document).ready(function() {
$('.populares,.programas,.novidades,.lista-programas').slick({
   centerMode: true,
   infinite: true,
   centerPadding: '50px',
   slidesToShow: 4,
   slidesToScroll: 4,
   speed: 300,
   responsive: [
      {
         breakpoint: 768,
         settings: {
            centerMode: true,
            centerPadding: '21px',
            slidesToShow: 3
            
         }
      },
         {
         breakpoint: 480,
         settings: {
            centerMode: true,
            centerPadding: '21px',
            slidesToShow: 2
         }
      }
   ]
});


$(document).ready(function() {

// Gets the video src from the data-src on each button

var $videoSrc;  
$('.video-btn').click(function() {
    $videoSrc = $(this).data( "src" );
});
console.log($videoSrc);

  
  
// when the modal is opened autoplay it  
$('#modalvideo').on('shown.bs.modal', function (e) {
// set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
   $("#videoyoutube").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" ); 


   /* Get the element you want displayed in fullscreen */ 
var elem = document.getElementById("videoyoutube");

/* Function to open fullscreen mode */
function openFullscreen() {
  if (elem.requestFullscreen) {
  elem.requestFullscreen();
  } else if (elem.mozRequestFullScreen) { /* Firefox */
  elem.mozRequestFullScreen();
  } else if (elem.webkitRequestFullscreen) { /* Chrome, Safari & Opera */
  elem.webkitRequestFullscreen();
  } else if (elem.msRequestFullscreen) { /* IE/Edge */
  elem.msRequestFullscreen();
  }
}
openFullscreen();


     
})
  


// stop playing the youtube video when I close the modal
$('#modalvideo').on('hide.bs.modal', function (e) {
    // a poor man's stop video
    $("#videoyoutube").attr('src',$videoSrc); 
}) 
    
 


  
  
// document ready  
});






});
</script>

<link href="https://fonts.googleapis.com/css?family=Exo:700,900|Montserrat:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<?php wp_footer(); ?>
   </body>
</html>