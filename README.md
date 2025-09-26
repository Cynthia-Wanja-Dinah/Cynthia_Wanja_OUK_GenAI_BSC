🌦️ Weather Chatbot (AI Edition)

This project is a simple weather chatbot built using Jac language, Python, and the OpenWeather API.
The chatbot uses an LLM (Large Language Model) to suggest a city from a predefined list, then fetches and displays real-time weather information for that city.


📌 Features

✅ Fetches live weather data (temperature, description, etc.) from OpenWeather API.

✅ Easy to extend by adding more cities or functionalities.

✅ Demonstrates Jac integration with Python and external APIs.


⚙️ Prerequisites

Before running this project, make sure you have the following installed:

Python 3.12+

Jac Language

A valid OpenWeather API Key (get it from OpenWeather
)

Required Python packages:
step 1: create environment 
python -m venv venv
source venv/bin/activate -Linux
.env/Scripts/activate - Windows

step 2: install packages
pip install laclang
pip install byllm

🚀 Setup & Usage
1️⃣ Clone the Repository
git clone this repo
cd weather-chatbot
jac run main.jac

4️⃣ Example Output
Weather Chatbot (AI Edition) initialized!
AI suggests checking weather for: Nairobi
The weather in Nairobi is clear sky with temperature 23°C.

Possible Improvements

Allow users to input their own city instead of a fixed list.

Support multiple weather APIs (backup if one fails).

Add forecasts (hourly, 7-day) instead of just current weather.

Extend the AI suggestion logic with contextual awareness (e.g., "What’s the weather in the hottest city?").

👩🏽‍💻 Author

Developed by Cynthia Wanja – A fresh graduate and data science enthusiast passionate about AI + public health + automation.
