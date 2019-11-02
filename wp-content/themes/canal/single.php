<?php get_header(); ?>
   <?php get_template_part( 'partes/headermenu'); ?>
   

  
   <?php 
      $catt = 0; 
      $categoryID;
      if ( have_posts() ) {
         while ( have_posts() ) {
            the_post(); 
            ?>

            <?php if($catt == 0){ ?>
            <div id="carousel-programas" class="carousel slide single" data-ride="carousel">
            <div class="carousel-inner">
    






               

               <div class="carousel-item active">
                  <!-- <a href="#" title="#"> -->
                  <?php echo '<img src="' . get_the_post_thumbnail_url() . '" class="img-fluid" />'; ?>
                     <div class="titulo-episodio">
                           <?php 

                              


                              echo '<button type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/Jfrjeg26Cwk" data-target="#modalvideo">';
                              echo 'ASSISTIR';
                              echo '</button>';
                              echo '<div class="mask">';
                              echo '<div class="row">';
                              echo '<div class="col-12 col-md-6">';
                                echo '<p>' . get_field('indicacacao_de_episodio') . '</p>';
                                echo '<h2>' . get_the_title() . '</h2>';
                                echo '<p>' . get_field('informacoes_de_autoria') . '</p>';
                                echo '<p>' . get_field('informacoes_de_tempo') . '</p>';
                                echo '<h3>Sinopse</h3>';
                                echo '<p>' . get_the_excerpt() . '</p>';
                              echo '</div>';  
                              echo '<div class="col-12 offset-md-3 col-md-3 " >';
                              echo '<h3>Trailer</h3>';
                              echo '<div class="embed-responsive embed-responsive-16by9">';
                              echo '<embed class="embed-responsive-item"  width="560" height="315" src="https://www.youtube.com/embed/'. get_field('trailer_do_episodio') .'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"></embed>';
                              echo '</div>';  

                              echo '</div>';  
                              echo '</div>';
                        ?>

                           
                     </div>
                  <!-- </a> -->

               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
               <div class="col-12">
                  <div class="cabeca-sliders">Comentários</div>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
            <?php 
               }
               $catt++;
            ?>
               

               <div class="col-8">
                            <script type='text/javascript' src='https://connect.facebook.net/pt_BR/sdk.js?ver=5.2.2#xfbml=1&#038;version=v4.0&#038;appId=934225340291932&#038;autoLogAppEvents=1'></script>
                                <div id="fb-root"></div>
                                <div class="fb-comments" data-href="https://canalmaker.com/" data-width="100%" data-numposts="5"></div>
               </div>

               <div class="col-4">

               <?php
               $related = new WP_Query(
                  array(
                     'category__in'   => wp_get_post_categories( $post->ID )[0],
                     'posts_per_page' => -1,
                     'post__not_in'   => array( $post->ID )
                  )
               );


               if( $related->have_posts() ) { 
                  while( $related->have_posts() ) { 
                     $related->the_post(); 
                     get_template_part( 'partes/item', 'listagemrelacionados' ); 
                  }
                  wp_reset_postdata();
               }
               ?>


               </div>

               

            <?php
            } // end while
            echo '</div></div>';
         } // end if
         get_template_part( 'partes/footer'); ?>
 <?php get_footer(); ?>


 <div class="container">
  
  


<!-- Modal -->
<div class="modal fade" id="modalvideo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-full" role="document" style="width:1200">
    <div class="modal-content">
      <div class="modal-body">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
         </button>        
          <!-- 16:9 aspect ratio -->
          <div class="embed-responsive embed-responsive-16by9">
           <iframe class="embed-responsive-item" src="" id="videoyoutube"  allowscriptaccess="always" allow="autoplay" allowfullscreen="allowfullscreen"></iframe>
        </div>
      </div>
    </div>
  </div>
</div> 
  
  
  
</div>


