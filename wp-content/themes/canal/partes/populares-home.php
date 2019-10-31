      <div class="container-fluid">
        <div class="cabeca-sliders">
            <span class='pull-left'>Populares</span>
        </div>
         <ul class="populares">
      <?php
        $posts = wp_most_popular_get_popular( array( 'limit' => 10, 'category'=>'22', 'post_type' => 'post', 'range' => 'all_time' ) );
        global $post;
        if ( count( $posts ) > 0 ): foreach ( $posts as $post ):
            setup_postdata( $post );
            ?>
               <?php get_template_part( 'partes/item', 'listagemcarousel' ); ?>
            <?php
        endforeach; endif;
        ?>
        </ul>
    </div>