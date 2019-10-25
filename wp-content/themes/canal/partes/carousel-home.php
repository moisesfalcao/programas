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
                

                echo '<img src="https://via.placeholder.com/300x100/09f.png/fff" class="d-block w-100" alt="...">
                <h2>Por que a biotecnologia ainda vai salvar os seres humanos</h2>
                <h3>Ipsum dolore domenics delauntre comnstur consequectuer habilis demenier</h3>
                <img src="https://via.placeholder.com/500x300/09f.png/fff" alt="">
            </div>';
            endwhile;
            
            // Reset Query
            wp_reset_query();

            ?>

         </div>
         <!-- <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
         </a>
         <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
         </a> -->

         <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">ipsum dolore unte demonstecus</li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1">ipsum dolore unte demonstecus</li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2">ipsum dolore unte demonstecus</li>
         </ol>

      </div>