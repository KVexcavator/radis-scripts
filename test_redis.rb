require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 6379)
puts "Inter something"
msg = gets.strip

redis.set("something", msg)
val = redis.get("something")

puts "You inter #{val}"

redis.flushall
