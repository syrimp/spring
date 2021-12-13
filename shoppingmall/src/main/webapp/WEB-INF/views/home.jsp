<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="includes/header.jsp" %>

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
                    <img src="/resources/home_banner.PNG" alt="Illustration by Icons 8 from Ouch!" class="first-img">
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
            	오늘 날씨는? 
            <span class="city"> </span>
            <span class="weather"> </span>
            <span class="icon"> </span>
            <span class="humidity"> </span>
            </div>
        </h2>
        
        <br/><p>
            	무슨 옷을 입어야 할까 고민하는 당신에게 지금 온도에 맞는 옷을 추천해드립니다.
        </p>
        
        <p>이 아래로 상품들 출력 예정입니다.</p>
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
                        <h2 class="card-text text-center">이벤트/행사</h2>
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

    
	<script src="/resources/weather.js"></script>
	<%@include file="includes/footer.jsp" %>