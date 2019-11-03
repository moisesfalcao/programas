<?php get_header(); ?>
   <?php get_template_part( 'partes/headermenu'); ?>
  


<div class="pagina-sobre">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-12">
            
            <h2>Resultado da busca</h2>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-12 col-md-12">
                <div class="row">
            
                <?php 
      if ( have_posts() ) {
         while ( have_posts() ) {
            the_post(); 
            ?>

                <div class="col-3">
                  <ul class="epi-pro noticia">
                     <?php get_template_part( 'partes/item', 'listagemcarousel' ); ?>
                  </ul>
                </div>

                  
                <?php

} // end while
} // ?>
                


                </div>
            </div>
        </div>
    </div>
</div>


<?php

get_template_part( 'partes/footer'); ?>

<?php get_footer(); ?>