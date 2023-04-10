import requests

api_key = "76661913012cdd686267e1db08a00f64"
url = f"https://api.themoviedb.org/3/search/movie?api_key={api_key}&language=en-US&query=terminator 2 judgment day&page=1&include_adult=false"


response = requests.get(url)
data = response.json()


print(data)

