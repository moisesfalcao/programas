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
         <nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
            <a href="/" class="navbar-brand d-flex w-50 mr-auto">Navbar 3</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
               <ul class="navbar-nav w-100 justify-content-center">
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
                     <a class="nav-link" href="#">Right</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#">Right</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#">Right</a>
                  </li>
               </ul>
            </div>
         </nav>
         <?php 
            if ( have_posts() ) {
            	while ( have_posts() ) {
            		the_post(); 
            		//
            		// Post Content here
                //
                
                ?>
         <?php if( is_front_page() ){ ?>
      </header>

      <?php get_template_part( 'partes/carousel', 'home' ); ?>
     



      <div class="container-fluid">
         <h2>Populares</h2>
         <ul class="populares">
            <?php
               $args = $args = array(
               'cat' => '1'
               );
               // Custom query.
               $query = new WP_Query( $args );
               // Check that we have query results.
               if ( $query->have_posts() ) {
               // Start looping over the query results.
               while ( $query->have_posts() ) {
                   $query->the_post();
                   echo "<li>" . get_the_title() . "</li>";
               }
               }
               // Restore original post data.
               wp_reset_postdata();
               ?>
         </ul>
      </div>
      <div class="container-fluid">
         <h2>programas</h2>
         <ul class="programas">
            <?php
               //wp_list_categories( array(
               //'hide_empty' => 0, // show empty categories in the list
               //'child_of' => 2, // Replace with the ID of the parent category
               //'title_li'=>'',
               //) );
               
               
               
               
               $terms = apply_filters( 'taxonomy-images-get-terms', '' ,array('having_images'=>true,'cache_images'=>true,'parent'=>13));
               if ( ! empty( $terms ) ) {
                   foreach ( (array) $terms as $term ) {
                       
                       print '<li>' . $term->name . '' . get_field('imagem_miniatura',$term) . '<a href="' . esc_url( get_term_link( $term, $term->taxonomy ) ) . '">' . wp_get_attachment_image( $term->image_id, 'full', "", ["class" => "img-fluid"] ) . '</a></li>';
                   }
               }
               ?>
         </ul>
      </div>
      <div class="container-fluid">
         <h2>Novidades</h2>
         <ul class="novidades">
            <?php
               $args = $args = array(
               'cat' => '1'
               );
               // Custom query.
               $query = new WP_Query( $args );
               // Check that we have query results.
               if ( $query->have_posts() ) {
               // Start looping over the query results.
               while ( $query->have_posts() ) {
                   $query->the_post();
                   echo "<li>" . get_the_title() . "</li>";
               }
               }
               // Restore original post data.
               wp_reset_postdata();
               ?>
         </ul>
      </div>
      <?php } /* fim home */ ?>
      <?php
         } // end while
         } // end if
         ?>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
      <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
      <script>
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
      </script>
      <style>
         .slick-slide{ margin-right:20px;}
      </style>
   </body>
</html>