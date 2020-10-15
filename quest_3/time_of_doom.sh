longitude=$(curl -s https://pastebin.com/raw/iWtxzrPz | jq '.angry_moon.longitude')
latitude=$(curl -s https://pastebin.com/raw/iWtxzrPz | jq '.angry_moon.latitude')
distance=$(curl -s https://pastebin.com/raw/iWtxzrPz | jq '.angry_moon.distance')
speed=$(curl -s https://pastebin.com/raw/iWtxzrPz | jq '.angry_moon.speed')
echo The Angry Moon is located at lat: $latitude, lng: $longitude.
echo It is $distance away from us, but it is going to fall at a speed of $speed m/s.