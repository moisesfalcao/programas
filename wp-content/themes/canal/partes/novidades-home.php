<div class="container-fluid">
    <div class="cabeca-sliders">
        <span class='pull-left'>Novidades</span>
        <button class='btn btn-primary pull-left'>Ver Todos</button>
    </div>
    <ul class="populares">
    <?php
    query_posts( 'post_type=post' );
    while ( have_posts() ) : the_post();
    
    get_template_part( 'partes/item', 'listagemcarousel' );
    
    endwhile;
    wp_reset_query();
    ?>
    </ul>
</div>