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
                <li>
                    <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                        <?php echo '<img class="img-fluid" src="'. get_field('miniatura_do_episodio') .'" alt="">'; ?>
                        <span class="icone <?php echo strtolower(get_field('tipo_da_midia')); ?>"></span>
                        <div class="titulo-episodio">
                            <h2><?php if ( get_the_title() ) the_title(); else the_ID(); ?></h2>
                            <h3><?php echo get_field('indicacacao_de_episodio'); ?></h3>
                            <p><?php echo get_the_excerpt(); ?></p>
                        </div>
                    </a>
                </li>
            <?php
        endforeach; endif;
        ?>
        </ul>
    </div>