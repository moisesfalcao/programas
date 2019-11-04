<header>
         <nav class="navbar navbar-expand-lg bg-faded justify-content-center">
            <a href="<?php echo get_option( 'siteurl' ); ?>" class="navbar-brand d-flex w-50 mr-auto"><img src="<?php echo bloginfo('template_url'); ?>/img/logo-branca.png" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-center">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="nav-center">
               <ul class="navbar-nav w-100 justify-content-center .text-white" >
                  <li class="nav-item active">
                     <a class="nav-link" href="<?php echo get_option( 'siteurl' ); ?>/canal-maker">SOBRE</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="<?php echo get_option( 'siteurl' ); ?>/programas">PROGRAMAS</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="<?php echo get_option( 'siteurl' ); ?>/novidades">NOVIDADES</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="<?php echo get_option( 'siteurl' ); ?>/contato">CONTATO</a>
                  </li>
               </ul>
               <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
                  <li class="nav-item">
                     <a class="nav-link" href="#">
                     <div class="search-container">
                        <form action="<?php echo get_option( 'siteurl' ); ?>" method="GET">
                           <input type="text" placeholder="Buscar" name="s">
                           <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                     </div>
                     </a>
                  </li>
               </ul>
            </div>
         </nav>
         </header>