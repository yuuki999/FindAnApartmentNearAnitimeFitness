require "./Http.rb"

http = Http.new 
body = http.http_get_body('https://www.anytimefitness.co.jp/')

puts body






