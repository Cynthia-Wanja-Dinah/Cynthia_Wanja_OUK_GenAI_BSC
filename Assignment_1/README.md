# 🌦️ Weather Chatbot (AI Edition)

A simple weather chatbot built with Jac language, Python, and the OpenWeather API. This project showcases how to integrate an LLM (Large Language Model) to suggest cities from a predefined list and fetch real-time weather data for the suggested city.

---

## Features

-  Fetches live weather data (temperature, description, etc.) from the OpenWeather API.
-  Easy extendability to add more cities or additional functionalities.
-  Demonstrates Jac integration with Python and external APIs.

---

## Prerequisites

Ensure you have the following installed before running the project:

- Python 3.12+
- Jac Language
- A valid OpenWeather API Key (get one from [OpenWeather](https://openweathermap.org/api))
- Required Python packages: `jaclang`, `byllm`

---

## Setup Instructions

### Step 1: Create and activate a virtual environment

Windows CMD:
python -m venv venv
venv\Scripts\activate

Linux/MacOS:



---

### Step 2: Install required Python packages
```bash
pip install jaclang
pip install byllm
````




---

### Step 3: Set your OpenWeather API key as environment variable

Linux/MacOS:
export OPENWEATHER_API_KEY="your_openweather_api_key"

Windows CMD:
set OPENWEATHER_API_KEY="your_openweather_api_key"



---

## Usage

### Step 4: Clone this repository and navigate into it


### Step 5: Run the Jac program

## Example Output
```bash
Weather Chatbot (AI Edition) initialized!
AI suggests checking weather for: Nairobi
The weather in Nairobi is clear sky with temperature 23°C.
```
