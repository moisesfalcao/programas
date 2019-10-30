      <div class="container-fluid">
        <div class="cabeca-sliders">
            <span class='pull-left'>Novidades</span>
            <button class='btn btn-primary pull-left'>Ver Todos</button>
        </div>
         <ul class="populares">
      <?php

                query_posts( 'post_type=post' );
                while ( have_posts() ) : the_post();
            ?>
            
                <?php if (has_category('programa')) { ?>
                <li>
                    <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                        <?php echo '<img class="img-fluid" src="'. get_field('miniatura_do_episodio') .'" alt="">'; ?>
                        <div class="titulo-episodio">
                            <h2><?php if ( get_the_title() ) the_title(); else the_ID(); ?></h2>
                            <h3><?php echo get_field('indicacacao_de_episodio'); ?></h3>
                            <p><?php echo get_the_excerpt(); ?></p>
                        </div>
                    </a>
                </li>
                <?php }else{ ?>

                    <li class="tipo-noticia">
                    <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                        <?php echo '<img class="img-fluid" src="'. get_template_directory_uri() .'/img/branco.png" alt="">'; ?>
                        
                        <div class="titulo-episodio">
                            <?php echo '<img class="img-fluid" src="'. get_the_post_thumbnail_url() .'" alt="">'; ?>
                            <h2><?php if ( get_the_title() ) the_title(); else the_ID(); ?></h2>
                            <p><?php echo get_the_excerpt(); ?></p>
                            <p><button class='btn btn-primary pull-left'>saiba mais</button></p>
                            
                        </div>
                    </a>

                    </li>

                <?php } ?>

            <?php
        endwhile;
        wp_reset_query();
        ?>
        </ul>
    </div>

<!-- 
    <div class="container-fluid">
        <div class="cabeca-sliders">
            <span class='pull-left'>Novidades</span>
            <button class='btn btn-primary pull-left'>Ver Todos</button>
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
    </div> -->


