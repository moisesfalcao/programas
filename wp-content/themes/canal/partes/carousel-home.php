

        <div id="carousel-home" class="carousel slide" data-ride="carousel">
         
         <div class="carousel-inner">

            <?php        
            // The Query
            query_posts( 'cat=22&posts_per_page=4' );
            // The Loop
            $z = 0;
            while ( have_posts() ) : the_post();
                if($z==0){
                    echo '<div class="carousel-item active">';
                    $z++;
                }else{
                    echo '<div class="carousel-item">';
                }
                echo '<img src="' . get_the_post_thumbnail_url() . '" class="d-block w-100" alt="'. get_the_title() .'">
                <div class="titulo-episodio">
                    <img class="icone-episodio" src="'. get_field('icone_do_episodio') .'" alt="">
                    <h2><a href="' . get_the_permalink() . '">'. get_the_title() .'</a></h2>
                    
                </div>
                
                
            </div>';
            endwhile;
            wp_reset_query();
            ?>
         </div>
         <ol class="carousel-indicators">
         <?php        
            // The Query
            query_posts( 'cat=22&posts_per_page=4' );
                // The Loop
            $w = 0;
            while ( have_posts() ) : the_post();
                if($w==0){
                   echo '<li data-target="#carousel-home" data-slide-to="0" class="active">'.get_the_excerpt().'</li>';
               }else{
                    echo '<li data-target="#carousel-home" data-slide-to="'. $w .'">'.get_the_excerpt().'</li>';
                }
                $w++;
            endwhile;
            // Reset Query
            wp_reset_query();
            ?>
         </ol>

      </div>


