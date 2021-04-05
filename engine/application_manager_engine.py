import sys, time



def get_weather(place):
    return place+'_ok'

    #return place + '_ok'
    '''place = place.replace(" ", "-")
    url = "https://www.weather-forecast.com/locations/" + place + "/forecasts/latest"
    r = requests.get(url)
    soup = bs(r.content, "lxml")
    weather = soup.findAll("span", {"class": "phrase"})[0].text
    return weather'''

while(True):
    
    print(get_weather(input()))
    sys.stdout.flush()
