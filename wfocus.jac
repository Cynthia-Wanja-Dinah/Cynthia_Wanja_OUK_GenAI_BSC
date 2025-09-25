import from byllm {Model}

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);


def extract_location(question: str) -> str by llm();


def get_weather_for_location(location: str) -> str {
    if location.lower() == "nairobi" {
        return "Currently in Nairobi, Kenya: 18°C, cloudy, humidity 59%, wind east at 5 mph.";
    } elif location.lower() == "mombasa" {
        return "Currently in Mombasa, Kenya: 28°C, sunny, humidity 70%, wind southeast at 8 mph.";
    } elif location.lower() == "kisumu" {
        return "Currently in Kisumu, Kenya: 25°C, thunderstorms, humidity 80%, wind west at 10 mph.";
    }
    return "Sorry, no weather data available for " + location + ".";
}

# Main entry point
with entry {
    question: str = "What is the weather for Kisumu?";
    
    location: str = extract_location(question);
    print("Extracted location: [" + location + "]");
    normalized_location: str = location.strip().lower();
    answer: str = get_weather_for_location(normalized_location);
    
    print("Question: " + question);
    print("Weather Update: " + answer);
}

