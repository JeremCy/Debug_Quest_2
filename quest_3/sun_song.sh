sunrisse= curl -s "https://api.sunrise-sunset.org/json?lat=48.813875&lng=2.392521" | jq '.results.sunrise'
sunset=  curl -s "https://api.sunrise-sunset.org/json?lat=48.813875&lng=2.392521" | jq '.results.sunset'
echo Sunrise is expected at $sunrisse and sunset at $sunset