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
      <header>
         <nav class="navbar navbar-expand-md bg-faded justify-content-center">
            <a href="/" class="navbar-brand d-flex w-50 mr-auto"><img src="<?php echo bloginfo('template_url'); ?>/img/logo-branca.png" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="nav-center">
               <ul class="navbar-nav w-100 justify-content-center .text-white" >
                  <li class="nav-item active">
                     <a class="nav-link" href="#">SOBRE</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="//codeply.com">PROGRAMAS</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#">NOVIDADES</a>
                  </li>
               </ul>
               <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
                  <li class="nav-item">
                     <a class="nav-link" href="#">
                     <div class="search-container">
                        <form action="/action_page.php">
                           <input type="text" placeholder="Buscar" name="search">
                           <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                     </div>
                     </a>
                  </li>
               </ul>
            </div>
         </nav>
         </header>

         <?php 
            if ( have_posts() ) {
            	while ( have_posts() ) {
            		the_post(); 
            		//
            		// Post Content here
                //
                
                ?>
         <?php if( is_front_page() ){ ?>
      
      <?php get_template_part( 'partes/carousel', 'home' ); ?>
      <?php get_template_part( 'partes/populares', 'home' ); ?>
      <?php get_template_part( 'partes/programas', 'home' ); ?>
      <?php get_template_part( 'partes/novidades', 'home' ); ?>

      <?php } /* fim home */ ?>

      <?php
         } // end while
         } // end if
         ?>




         <footer>
            <div class="container-fluid">
               <div class="row">
                  <div class="col-12 col-md-6">redes sociais</div>
                  <div class="col-12 col-md-6">formulário de newsletter</div>
               </div>

               <div class="row">
                  <div class="col-12 text-center"> marcas do rodape Apresenta </div>
               </div>

               <div class="row">
                  <div class="col-12 text-center"> marcas do rodape Apoio </div>
               </div>


            </div>
         </footer>


      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
      <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
      <script>

$(document).ready(function() {


         $('.populares,.programas,.novidades').slick({
           centerMode: true,
           centerPadding: '50px',
           slidesToShow: 4,
           responsive: [
             {
               breakpoint: 768,
               settings: {
                 arrows: false,
                 centerMode: true,
                 centerPadding: '21px',
                 slidesToShow: 3
               }
             },
             {
               breakpoint: 480,
               settings: {
                 arrows: false,
                 centerMode: true,
                 centerPadding: '21px',
                 slidesToShow: 2
               }
             }
           ]
         });

         $(window).resize(function(){
            $('.populares,.programas,.novidades').slick('reInit');

            var maxHeight = -1;
            $('.slick-slide').each(function() {
               maxHeight = maxHeight > $(this).height() ? maxHeight : $(this).height();
            });
            $('.slick-slide').each(function() {
               $(this).height(maxHeight);
            });

         });

         
           
         });
      </script>

<link href="https://fonts.googleapis.com/css?family=Exo:700,900|Montserrat:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   </body>
</html>