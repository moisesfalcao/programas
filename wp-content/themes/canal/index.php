<?php get_header(); ?>
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
                  case 'canal-maker':
                     get_template_part( 'partes/pagina', 'sobre' );
                     break;
                  case 'novidades':
                     get_template_part( 'partes/pagina', 'novidades' );
                     break;
                  case 'contato':
                     get_template_part( 'partes/pagina', 'contato' );
                     break;
               } 
                

               }
            } // end while
         } // end if

         get_template_part( 'partes/footer'); ?>

 <?php get_footer(); ?>