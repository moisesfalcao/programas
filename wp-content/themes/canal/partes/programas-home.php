

      <div class="container-fluid">
         
        <div class="cabeca-sliders">
            <span class='pull-left'>Programas</span>
            <button class='btn btn-primary pull-left'>Ver Todos</button>
        </div>

         <ul class="programas">




         <?php
            $args = array( 'hide_empty' => '0', 'child_of' => '13');
            $categories = get_categories($args);

            if($categories){
               foreach($categories as $category) {
                   ?>
                <li>
                    <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                                                <?php 
                        $image = get_field('imagem_miniatura', 'category_'.$category->term_id);
                        echo '<img src="' . $image . '" class="img-fluid" alt=" " />'; 
                        ?>
                        <div class="titulo-episodio">
                            <h2><?php echo  $category->name; ?></h2>
                        </div>
                    </a>
                </li>
            <?php 
               } 
            }    
            ?> 
         
         <!-- <?php
            $args = array( 'hide_empty' => '0', 'child_of' => '13');
            $categories = get_categories($args);

            if($categories){
               foreach($categories as $category) {

                  echo '<li>';
                    echo '<a href="#">';
                    $image = get_field('imagem_miniatura', 'category_'.$category->term_id);
                    echo '<img src="' . $image . '" class="img-fluid" />'; 
                   
                    echo '<div class="titulo-episodio">';
                       echo '<h2>' . $category->name . '</h2>';
                    echo '</div>';

                    echo '</a>';
                  echo '</li>';
               } 
            }    
            ?> -->
         </ul>
      </div>