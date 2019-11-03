<?php get_header(); ?>
   <?php get_template_part( 'partes/headermenu'); ?>
   

  
   <?php 
      $catt = 0; 
      $categoryID;
      if ( have_posts() ) {
         while ( have_posts() ) {
            the_post(); 
            ?>

            <?php if(get_field('tipo_da_midia') == 'video' || get_field('tipo_da_midia')=='podcast'){ ?>

            <?php if($catt == 0){ ?>
            <div id="carousel-programas" class="carousel slide single" data-ride="carousel">
            <div class="carousel-inner">
    






               

               <div class="carousel-item active">
                  <!-- <a href="#" title="#"> -->
                  <?php echo '<img src="' . get_the_post_thumbnail_url() . '" class="d-block w-100" />'; ?>
                     <div class="titulo-episodio">
                           <?php 

                              


                              
                              if(get_field('tipo_da_midia')=='video'){
                                 echo '<button type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/'. get_field('video_do_episodio') .'" data-target="#modalvideo">';
                                 echo 'ASSISTIR';
                                 echo '</button>';
                              }
                              

                              echo '<div class="mask">';
                              echo '<div class="row">';
                              echo '<div class="col-12 col-md-6">';
                              
                                echo '<p>' . get_field('indicacacao_de_episodio') . '</p>';
                                echo '<h2>' . get_the_title() . '</h2>';
                                echo '<p>' . get_field('informacoes_de_autoria') . '</p>';
                                echo '<p>' . get_field('informacoes_de_tempo') . '</p>';
                                echo '<h3>Sinopse</h3>';
                                echo '<p>' . get_the_excerpt() . '</p>';
                                if(get_field('tipo_da_midia')=='podcast'){
                                 echo '<iframe class="embed-podcast" scrolling="no" id="hearthis_at_track_3945757" width="100%" height="95" src="https://hearthis.at/embed/3945757/transparent_black/?hcolor=&color=&style=2&block_size=2&block_space=1&background=0&waveform=1&cover=1&autoplay=0&css=" frameborder="0" allowtransparency allow="autoplay"></iframe>';
                                 }
                              echo '</div>';  
                              echo '<div class="col-12 offset-md-3 col-md-3 " >';
                              if(get_field('tipo_da_midia')=='video'){
                                 if(get_field('trailer_do_episodio')){
                                 echo '<h3>Trailer</h3>';
                                 echo '<div class="embed-responsive embed-responsive-16by9">';
                                 echo '<embed class="embed-responsive-item"  width="560" height="315" src="https://www.youtube.com/embed/'. get_field('trailer_do_episodio') .'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"></embed>';
                                 echo '</div>';  
                                 }
                              }
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
                  <?php get_template_part( 'partes/comentarios'); ?>
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

            <?php } else { ?>


               <div class="pagina-sobre">
                  <div class="container">
                     <div class="row justify-content-center">
                           <div class="col-12 col-md-8">
                           
                           <h2><?php the_title(); ?></h2>
                           <?php echo '<img src="' . get_the_post_thumbnail_url() . '" class="img-fluid" />'; ?>
                           </div>
                     </div>
                     <div class="row justify-content-center">
                           <div class="col-12 col-md-8">
                              
                              <?php the_content(); ?>

                              <div class="cabeca-sliders"><h3>Comentários</h3></div>
                              <?php get_template_part( 'partes/comentarios'); ?>

                              <div class="cabeca-sliders"><h3>Mais Notícias</h3></div>
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
                     </div>
                  </div>
               </div>



               <?php }  ?>

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
         <?php if(get_field('tipo_da_midia')=='video'){ ?>
           <iframe class="embed-responsive-item" src="" id="videoyoutube"  allowscriptaccess="always" allow="autoplay" allowfullscreen="allowfullscreen"></iframe>
         <?php }else{ ?>
           <iframe class="embed-responsive-item" scrolling="no" id="hearthis_at_track_3934024" width="100%" height="150" src="https://hearthis.at/embed/3934024/transparent_black/?hcolor=&color=&style=2&block_size=2&block_space=1&background=1&waveform=0&cover=0&autoplay=0&css=" frameborder="0" allowtransparency allow="autoplay"><p>Listen to <a href="https://hearthis.at/dalevox/va-16-os-anjos-durante-a-paixao-e-morte-de-cristo/" target="_blank">VA 16 - Os Anjos Durante a Paixão e Morte de Cristo</a> <span>by</span><a href="https://hearthis.at/dalevox/" target="_blank" >Alessandro Simões S.</a> <span>on</span> <a href="https://hearthis.at/" target="_blank">hearthis.at</a></p></iframe>
         <?php } ?>
        </div>
      </div>
    </div>
  </div>
</div> 
  
  
  
</div>


