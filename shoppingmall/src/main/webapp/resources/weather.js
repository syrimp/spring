const API_KEY = "d26df18e2a5d634bc92887574cdd4e90";
const weather = document.querySelector("#weather_txt .weather");
const city = document.querySelector("#weather_txt .city");
const humidity = document.querySelector("#weather_txt .humidity");

function onGeoOk(position){
    const lat= position.coords.latitude;
    const lon = position.coords.longitude;
    const url= `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric`;
    fetch(url).then(Response => Response.json()).then(data =>{
        console.log(data);
        city.innerText = `${data.name}`;
        weather.innerText = `${data.main.temp}°C ${data.weather[0].main}`;
        humidity.innerText = `습도:${data.main.humidity}%`;
        sessionStorage.setItem("city", city.innerText);
        sessionStorage.setItem("weather", weather.innerText);
        sessionStorage.setItem("humidity", humidity.innerText);
    });
}
function onGeoError(){
alert("위치 정보를 찾을 수 없습니다.");
}

city.innerText= sessionStorage.getItem("city");
weather.innerText = sessionStorage.getItem("weather");
humidity.innerText= sessionStorage.getItem("humidity");

const savedWeather = sessionStorage.getItem("city");

// if(savedWeather === null){
//     navigator.geolocation.getCurrentPosition(onGeoOk, onGeoError);
// }
navigator.geolocation.getCurrentPosition(onGeoOk, onGeoError);
