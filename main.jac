# weather_chatbot.jac

::py::
import requests
import os

API_KEY = os.getenv("OPENWEATHER_API_KEY")  
BASE_URL = "http://api.openweathermap.org/data/2.5/weather"

def get_weather(city: str) -> str:
    try:
        response = requests.get(BASE_URL, params={"q": city, "appid": API_KEY, "units": "metric"})
        data = response.json()
        if response.status_code == 200:
            temp = data["main"]["temp"]
            desc = data["weather"][0]["description"]
            return f"The weather in {city} is {desc} with temperature {temp}°C."
        else:
            return f"Could not get weather for {city}. Reason: {data.get('message', 'Unknown')}"
    except Exception as e:
        return f"Error fetching weather: {str(e)}"
::py::

import from byllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);


def suggest_city(cities: list) -> str by llm();

with entry {
    print("Weather Chatbot (AI Edition) initialized!");

    
    let cities = ["Nairobi", "Mombasa", "Kigali"];
    
    let suggested_city = suggest_city(cities);
    print("AI suggests checking weather for: " + suggested_city);

    let weather_report = get_weather(suggested_city);
    print(weather_report);
}
