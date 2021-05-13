a = ARGV
r=""
a= a.sort {|a, b| b <=> a }
a.each {|z| r += z +" "}
puts r