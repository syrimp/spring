<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>오늘 날씨 어때?</title>

    <link rel="icon" href="https://us.louisvuitton.com/static_lvfront/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="/resources/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="nav_wrap">
	    <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <div class="container-fluid">
	            <a class="navbar-brand" href="#">
	                <h2>오늘 모입조?</h2>
	            </a>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
	                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
	                aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                    <li class="nav-item">
	                        <a class="nav-link" href="#">WOMENSTYLE</a>
	                    </li>
	                    <li class="nav-item dropdown">
	                        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                            aria-expanded="false">
	                            MEN
	                        </a>
	                    </li>
	                </ul>
	                <div id="smallNav">
	                    <a href="#"><span class="bef_login">Join</span></a>
	                    <a href="#"><span class="bef_login">Login</span></a>
	                    <a href="#"><span class="af_login">Cart</span></a>
	                </div>
	                <form class="d-flex" action="/search/submit">
	                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword" required />
	                    <button class="btn btn-outline-success" type="submit"><img src="/resources/search (1).png"></button>
	                </form>
	            </div>
	        </div>
	    </nav>
    </div>
    <div class="size">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://www.louisvuitton.com/images/%EB%A3%A8%EC%9D%B4-%EB%B9%84%ED%86%B5--20201208_KR_PUSH1_DI1.jpg?wid=1240"
                        alt="..." class="first-img">
                </div>
                <div class="carousel-item">
                    <img src="https://www.louisvuitton.com/images/%EB%A3%A8%EC%9D%B4-%EB%B9%84%ED%86%B5--20201208__14_KR_PUSH1_DI1.jpg?wid=1240"
                        class="d-block first-img" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="campagine-section text-center mt-5 mb-5">
        <h2>
            <div id="weather_txt">
            Weather |
            <span class="city"> </span>
            <span class="weather"> </span>
            <span class="icon"> </span>
            <span class="humidity"> </span>
            </div>
        </h2>
        <p>
            오늘모입지??
        </p>
        <button type="button" class="btn btn-dark">오늘의 픽</button>
    </div>
    <div class="container pt-5 pb-5">
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="card">
                    <img src="https://www.louisvuitton.com/images/louis-vuitton--U_Holidays_2020_Push5_V2_DI1.jpg?wid=656"
                        class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h2 class="card-text">오늘의 픽</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="card">
                    <img src="https://www.louisvuitton.com/images/louis-vuitton--U_Holidays_2020_Push6_V2_DI1.jpg?wid=656"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <h2 class="card-text text-center">오늘의 날씨</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="card">
                    <img src="https://www.louisvuitton.com/images/louis-vuitton--U_Holidays_2020_Push7_V2_DI1.jpg?wid=656"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <h2 class="card-text text-center">오늘의 날씨</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <footer>
        <div class="container">
            <div class="first-line pb-5 pt-5">
                
            </div>
            <div class="row pb-5 pt-5 second-line ">
                <div class="flag col">
                    <img src="https://us.louisvuitton.com/flags/us.svg" width=16 height=12 />
                   대한민국
                </div>
                <div class="col"><a href="#" ">
                    Email Sign-Up</a></div>
                <div class="col"> <a href="#">Contact Us</a></div>
                <div class="col"> <a href="#">Follow Us</a></div>
                <div class="col"> <a href="#">California Transparency</a></div>
                <div class="col"><a href="#"> Legal Notice</a></div>
                <div class="col"> <a href="#">Careers</a></div>
                <div class="col"> <a href="#">Sitemap</a></div>     
            </div>         
            <div class=" mobile-footer">
                대한민국 : <img src="data:image/png;base64,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"
                    width=16 height=12 class="flag-img" />
				<?target data?>
				내가 있는곳
        </div>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>
        <script src="/resources/weather.js"></script>
</body>

</html>
<!--comment-->
<!--comment-->
