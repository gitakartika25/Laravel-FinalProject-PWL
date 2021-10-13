<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Gitsa &mdash; Hello {{Auth::user()->name}}!</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->

  <link href="{{url('assets/img/favicon.ico')}}" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{url('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{url('assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
  <link href="{{url('assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{url('assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
  <link href="{{url('assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
  <link href="{{url('assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{url('assets/css/style.css')}}" rel="stylesheet">
  <script src="{{url('asset/js/app.js')}}" defer></script>
  <link href="{{url('asset/css/app/css')}}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Delicious - v2.2.0
  * Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="gitsa.com"><span>Gitsa</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="{{ route('homeresto') }}">Home</a></li>
          <li class="active"><a href="/aboutresto">About</a></li>
          <li><a href="{{ route('menu')}}">Menu</a></li>
          <li><a href="#chefs">Gallery</a></li>
          <li><a href="#contact">Contact</a></li>
          <li class="book-a-table text-center"><a href="/transcation">Reservation</a></li>
          @guest
								<li class="nav-menu">
									<a class="nav-item" href="{{ route('login') }}">{{ __('Login') }}</a>
								</li>
								@if (Route::has('register'))
								<li class="nav-menu">
									<a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
								</li>
								@endif
								@else
								<li class="nav-item dropdown">
									<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
										{{ Auth::user()->name }} <span class="caret"></span>
									</a>

									<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
														document.getElementById('logout-form').submit();" style="color:black">
											{{ __('Logout') }}
										</a>

										<form id="logout-form" action="{{ route('logout') }}" method="POST"
											style="display: none;">
											@csrf
										</form>
									</div>
								</li>
								@endguest
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active">
          <img src="images/events-bg.jpg" style="width:100%"class="img-fluid" alt="">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>Gitsa</span> Restaurant</h2>
                <p class="animate__animated animate__fadeInUp">Memiliki pemandangan yang menyejukkan mata membuat anda betah untuk berlama-lama disini</p>
                <div>
                  <a href="{{ route('menu')}}" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="/transcation" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item">
          <img src="images/menu2.jpg" style="width:100%"class="img-fluid" alt="">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Our Menu</h2>
                <p class="animate__animated animate__fadeInUp">Menu yang disajikan sangat beragam. Dibuat dengan hati dan bahan-bahan yang sehat</p>
                <div>
                  <a href="{{ route('menu')}}" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="/transcation" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item">
          <img src="images/event-private.jpg" style="width:100%"class="img-fluid" alt="">
            <div class="carousel-background"><img src="images/place3.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Our Room</h2>
                <p class="animate__animated animate__fadeInUp">Memiliki ruangan yang beragam mulai dari private room, birthday room, sampai dengan meeting kami sajikan untuk anda</p>
                <div>
                  <a href="{{ route('menu')}}" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="/transcation" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("images/about.jpg");'>
            <a href="https://www.youtube.com/watch?v=jhmN66Z90U8" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <h3>Selamat datang di resto ternama <strong>Gitsa Resto</strong></h3>
              <p>
                Siapa yang tidak tahu tentang resto kami?
              </p>
              <p class="font-italic">
				Tentu saja tidak ada! HAHAHAH<br>
				Tapi disini mimin mau kasih tau nih tentang sejarah berdirinya resto kami, yuk cek!
              </p>
              <ul>
                <li><i class="bx bx-check-double"></i> Tempat nyaman dan luas</li>
                <li><i class="bx bx-check-double"></i> Terdapat banyak ruangan yang megah dan punya tema tersendiri</li>
                <li><i class="bx bx-check-double"></i> Staff dan cheff yang luar biasa professional!</li>
              </ul>
              	<p>Restaurant ini berdiri pada tanggal 17 Desember 2019. Dengan berbagai usaha kami membangun restaurant ini.</p>
				<p>Banyak orang yang telah membantu kami dalam mendirikan usaha ini, mulai dari rencana awal pembangunan sampai dengan saat ini kami membuka banyak cabang diseluruh negeri.<br>
				Dan untuk para staff juga kami mengucapkan terimakasih, karena dengan adanya mereka resturant ini menjadi nomor satu di Negeri ini.
              </p>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End About Section -->

	<!--Section management-->
	<section id="chefs" class="chefs">
      <div class="container">

        <div class="section-title">
          <h2>Our<span> Management</span></h2>
          <p>Dibalik restaurant yang mewah dan nyaman ini ada orang yang membangunnya dari 0, inilah pelopor resto kami :</p>
        </div>

        <div class="row">

          <div class="col-lg-6 col-md-5">
            <div class="member">
              <div class="pic"><img src="images/rana.jpeg" style="width:70%;height:70%;" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Sahira Rana Zafirah</h4>
                <span>CEO</span>
                <div class="social">
                  <a href="https://github.com/sahiraranaz"><i class="icofont-github"></i></a>
                  <a href="https://mobile.twitter.com/ranoranoranoo"><i class="icofont-twitter"></i></a>
                  <a href="https://www.instagram.com/sahiraranaz/"><i class="icofont-instagram"></i></a>
                  <a href="sahirahrana@gmail.com"><i class="icofont-email"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 col-md-5">
            <div class="member">
              <div class="pic"><img src="images/gita.jpg" style="width:70%;height:70%;" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Gita Kartika</h4>
                <span>Manager</span>
                <div class="social">
                  <a href=""><i class="icofont-github"></i></a>
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-email"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> <!--End section management-->


    <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs">
      <div class="container">

        <div class="section-title">
          <h2>Our Proffesional <span>Chefs</span></h2>
          <p>Menu yang lezat dan nyaman di lidah membuat pelanggan senantiasa datang kembali untuk mencoba menu kami</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/chef1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Putri Mumpuni</h4>
                <span>Master Chef</span>
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/chef2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Arnold Poernomo</h4>
                <span>Patissier</span>
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="images/chef3.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Renatta Moeloek</h4>
                <span>Cook</span>
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Chefs Section -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="owl-carousel testimonials-carousel">
        @foreach($comments as $li)
          <div class="testimonial-item">
            <h3>{{$li->nama}}</h3>
            <h4>{{$li->email}}</h4>
            <div class="stars">
              <i class="icofont-star"></i>
              <i class="icofont-star"></i>
              <i class="icofont-star"></i>
              <i class="icofont-star"></i>
              <i class="icofont-star"></i>
            </div>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              {{$li->comment}}
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>
          @endforeach
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!--Search-->
    <section class="search" id="search">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="section-title">Search!</h2>
                        <form action="/aboutresto/search" method="get" class="form-inline d-flex">
                            <input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputSearch" type="text" placeholder="Search for..." name="search"/>
                            <button class="btn btn-primary mx-auto" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    <!--End Search-->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Contact</span> Us</h2>
          <p>Tanyakan saja apapun pada kami, kami siap melayani anda!</p>
        </div>
      </div>

      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="icofont-google-map"></i>
              <h4>Location:</h4>
              <p>The Trans Luxury Hotel, Bandung<br>INA, 40273</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="icofont-clock-time icofont-rotate-90"></i>
              <h4>Open Hours:</h4>
              <p>Monday-Sunday:<br>11:00 AM - 23:00 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="icofont-envelope"></i>
              <h4>Email:</h4>
              <p>gitsa@gmail.com</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="icofont-phone"></i>
              <h4>Call:</h4>
              <p>+62 2209716401</p>
            </div>
          </div>
        </div>

        <form action="{{route('aboutresto.store')}}" method="post" role="form">
        @csrf
          <div class="form-row">
            <div class="col-md-6 form-group">
              <input type="hidden" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" value="{{Auth::user()->name}}"/>
              <div class="validate"></div>
            </div>
            <div class="col-md-6 form-group">
              <input type="hidden" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" value="{{Auth::user()->email}}"/>
              <div class="validate"></div>
            </div>
          </div>
          @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
            @endif
          <div class="form-group">
            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
            <div class="validate"></div>
          </div>
          <div class="text-center"><button type="submit" name="comment" class="btn btn-primary" style="background-color:#ffb03b;border-radius:50px;">Send Message</button></div>
        </form>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>Gitsa Resto</h3>
      <p>Segera kunjungi resto kami sebelum reservasi penuh!</p>
      <div class="social-links">
        <a href="gitsa.com" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="gitsa.com" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="gitsa.com" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="gitsa.com" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="gitsa.com" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; Copyright <strong><span>Gitsa</span></strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/ -->
        Designed by <a href="gitsa.com">Gitsa</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{url('assets/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{url('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{url('assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
  <script src="{{url('assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{url('assets/vendor/jquery-sticky/jquery.sticky.js')}}"></script>
  <script src="{{url('assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{url('assets/vendor/venobox/venobox.min.js')}}"></script>
  <script src="{{url('assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{url('assets/js/main.js')}}"></script>

</body>

</html>