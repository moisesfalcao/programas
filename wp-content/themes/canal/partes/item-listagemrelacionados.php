<?php if (has_category('programa')) { ?>

<div class="episodio-relacionado">
                <div class="row">
                    <div class="col-6">
                        <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                            <span class="icone <?php echo strtolower(get_field('tipo_da_midia')); ?>"></span>
                            <?php echo '<img class="img-fluid" src="'. get_the_post_thumbnail_url(get_the_ID(),'miniatura-listagem') .'" alt="">'; ?>
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

                <div class="episodio-relacionado">
                <div class="row">
                    <div class="col-4">
                        <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                            <span class="icone <?php echo strtolower(get_field('tipo_da_midia')); ?>"></span>
                            <?php echo '<img class="img-fluid" src="'. get_the_post_thumbnail_url(get_the_ID(),'miniatura-listagem') .'" alt="">'; ?>
                            
                            
                            
                        </a>
                    </div>
                    <div class="col-8">
                        <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                            <h2><?php echo get_field('indicacacao_de_episodio') . ' | ' . get_the_title(); ?></h2>
                            <p><?php echo get_the_excerpt(); ?></p>
                        </a>
                    </div>
                </div>
                </div>


                <?php } ?>