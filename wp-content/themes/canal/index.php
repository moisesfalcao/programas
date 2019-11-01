<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <title>CANAL MAKER</title>
      <?php wp_enqueue_style( 'style', get_stylesheet_uri() ); ?>
      <?php wp_head(); ?>
   </head>
   <body>
   <?php get_template_part( 'partes/headermenu'); ?>
   <?php 
      if ( have_posts() ) {
         while ( have_posts() ) {
            the_post(); 
            
               if( is_front_page() ){ // start home
               
                get_template_part( 'partes/carousel', 'home' ); 
                get_template_part( 'partes/populares', 'home' );
                get_template_part( 'partes/programas', 'home' );
                get_template_part( 'partes/novidades', 'home' );

               }else{ // end home // start others
                  global $post;
                  $post_slug = $post->post_name;
                  switch ($post_slug){
                    case 'programas':
                    get_template_part( 'partes/pagina', 'programas' );
                      break;
                  } 

               }
            } // end while
         } // end if


         get_template_part( 'partes/footer'); ?>


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





});
</script>

<link href="https://fonts.googleapis.com/css?family=Exo:700,900|Montserrat:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   </body>
</html>