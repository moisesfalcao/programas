
<div id="carousel-programas" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <?php
            $args = array( 'hide_empty' => '0', 'child_of' => '13');
            $categories = get_categories($args);
            $z=0;  

            if($categories){
               foreach($categories as $category) {
                

                if( $z<5 ){
                 if($z==0){
                    echo '<div class="carousel-item active">';
                    $z++;
                }else{
                    echo '<div class="carousel-item">';
                }
                ?>

                    <a href="<?php the_permalink() ?>" title="<?php echo esc_attr(get_the_title() ? get_the_title() : get_the_ID()); ?>">
                                                <?php 
                        $image = get_field('imagem_do_topo', 'category_'.$category->term_id);
                        echo '<img src="' . $image . '" class="img-fluid" alt=" " />'; 
                        ?>
                        <div class="titulo-episodio">
                            <h2><?php echo  $category->name; ?></h2>
                            <?php echo category_description($category->term_id); ?>
                            <button class='btn btn-light play'>ASSISTIR</button>
                        </div>
                    </a>

                </div>
                

            <?php 
                }
               } 
            }    
            ?> 
    </div>
 </div>



<div class="container-fluid">
<?php
//for each category, show all posts
$cat_args=array(
  'orderby' => 'name',
  'order' => 'ASC',
  'exclude'=>'22,13,1'
   );
$categories=get_categories($cat_args);
  foreach($categories as $category) {
    $args=array(
      'showposts' => -1,
      'category__in' => array($category->term_id),
      'caller_get_posts'=>1,
      
    );
    $posts=get_posts($args);
      if ($posts) {
        //echo '<p>Category: <a href="' . get_category_link( $category->term_id ) . '" title="' . sprintf( __( "View all posts in %s" ), $category->name ) . '" ' . '>' . $category->name.'</a> </p> ';
        echo '<div class="cabeca-sliders">';
            echo '<a href="' . get_category_link( $category->term_id ) . '" title="' . sprintf( __( "View all posts in %s" ), $category->name ) . '" ' . '><span class="pull-left">' . $category->name.' </span></a>';
        echo '</div>';
        echo '<ul class="lista-programas">';
        foreach($posts as $post) {
          setup_postdata($post); ?>
                <?php get_template_part( 'partes/item', 'listagemcarousel' ); ?>  
          <?php
        } // foreach($posts
        echo '</ul>';
      } // if ($posts
    } // foreach($categories
?>
</div>