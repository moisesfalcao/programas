<?php get_header(); ?>
   <?php get_template_part( 'partes/headermenu'); ?>
   

  
   <?php 
      $catt = 0; 
      if ( have_posts() ) {
         while ( have_posts() ) {
            the_post(); 
            ?>

            <?php if($catt == 0){ ?>
            <div id="carousel-programas" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
    






               <?php $categories = get_the_category(); ?>

               <div class="carousel-item active">
                  <!-- <a href="#" title="#"> -->
                  <?php echo '<img src="' . get_field('imagem_do_topo', 'category_'.$categories[0]->term_id) . '" class="img-fluid" />'; ?>
                  <?php echo '<img src="' . get_field('logo_do_programa', 'category_'.$categories[0]->term_id) . '" class="logo-programa" />'; ?>
                     <div class="titulo-episodio">
                           <?php 
                           if ( ! empty( $categories ) ) {
                              
                              echo '<h2>' . esc_html( $categories[0]->name ) . '</h2>';   
                              echo '<p>' . esc_html( $categories[0]->description ) . '</p>';
                           }
                        $args = array(
                              'cat' => $categories[0]->term_id,
                              'orderby' =>'post_date',
                              'order' => 'DESC',
                              'post_type' => 'post',
                              'posts_per_page' => '1',

                           );
                           $query = new WP_Query( $args );
                           if ( $query->have_posts() ) {
                              while ( $query->have_posts() ){
                                 $query->the_post();
                                 echo '<a href ="'. get_the_permalink() .'"><button class="btn btn-light play">ASSISTIR</button></a>';
                              } // end while ?
                           } // end if
                           wp_reset_postdata();
                           ?> 

                           
                     </div>
                  <!-- </a> -->

               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
               <div class="col-12">
                  <div class="cabeca-sliders">Episódios do programa</div>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
            <?php 
               }
               $catt++;
            ?>
               <div class="col-3">
                  <ul class="epi-pro">
                     <?php get_template_part( 'partes/item', 'listagemcarousel' ); ?>
                  </ul>
               </div>
            <?php
            } // end while
            echo '</div></div>';
         } // end if
         get_template_part( 'partes/footer'); ?>
 <?php get_footer(); ?>