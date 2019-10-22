<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
    
    </style>
    <title>Hello, world!</title>
    <?php wp_head(); ?>
  </head>
  <body>

  <div class="container">
    <h2>populares</h2>
    

    <ul class="populares">
    <?php
    wp_list_categories( array(
    'hide_empty' => 0, // show empty categories in the list
    'child_of' => 2, // Replace with the ID of the parent category
    'title_li'=>'',
    ) );
    ?>
    </ul>
</div>

<div class="container">
    <h2>programas</h2>
    <ul class="programas">
    <?php
    wp_list_categories( array(
    'hide_empty' => 0, // show empty categories in the list
    'child_of' => 2, // Replace with the ID of the parent category
    'title_li'=>'',
    ) );
    ?>
    </ul>
</div>

<div class="container">
    <h2>Novidades</h2>
    <ul class="novidades">
    <?php
    wp_list_categories( array(
    'hide_empty' => 0, // show empty categories in the list
    'child_of' => 2, // Replace with the ID of the parent category
    'title_li'=>'',
    ) );
    ?>
    </ul>
</div>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script>
$('.populares,.programas,.novidades').slick({
  centerMode: true,
  centerPadding: '60px',
  slidesToShow: 4,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 3
      }
    },
    {
      breakpoint: 480,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 2
      }
    }
  ]
});
</script>

  </body>
</html>