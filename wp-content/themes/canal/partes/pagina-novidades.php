<div class="pagina-sobre">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-12">
            
            <h2>Novidades</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 col-md-12">
                <div class="row">
            
            <?php query_posts('cat=24&posts_per_page=-1'); ?>
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    

            <div class="col-3">
                  <ul class="epi-pro noticia">
                     <?php get_template_part( 'partes/item', 'listagemcarousel' ); ?>
                  </ul>
               </div>


            <?php endwhile; else: ?>no match<?php endif; ?>
            

                    

                


                </div>
            </div>
        </div>
    </div>
</div>