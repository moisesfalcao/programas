<?php if (has_category('programa')) { ?>

<div class="episodio-relacionado">
                <div class="row">
                    <div class="col-6">
                        <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                            <?php echo '<img class="img-fluid" src="'. get_the_post_thumbnail_url(get_the_ID(),'medium') .'" alt="">'; ?>
                        </a>
                    </div>
                    <div class="col-6">
                        <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                            <h2><?php echo get_field('indicacacao_de_episodio') . ' | ' . get_the_title(); ?></h2>
                            
                            <p><?php echo get_the_excerpt(); ?></p>
                        </a>
                    </div>
                </div>
</div>

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