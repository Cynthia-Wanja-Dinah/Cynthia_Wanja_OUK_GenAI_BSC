import from byllm {Model}

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

# Extract location name from free-text question
def extract_location(question: str) -> str by llm();

# Internal Jac function to get weather info for a location
def get_weather_for_location(location: str) -> str {
    if location.lower() == "nairobi" {
        return "Currently in Nairobi, Kenya: 18°C, cloudy, humidity 59%, wind east at 5 mph.";
    }
    return "Sorry, no weather data available for " + location + ".";
}

# Main entry point
with entry {
    question: str = "What is the weather for Mombasa?";
    
    location: str = extract_location(question);  # Ask LLM to extract location
    answer: str = get_weather_for_location(location);  # Get weather from Jac logic
    
    print("Question: " + question);
    print("Weather Update: " + answer);
}
