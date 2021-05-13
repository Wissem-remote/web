
phrase = ARGV.join(" ")
i = 1
r = ""
phrase.scan(/./) {|x| 
i=0 if x == " "
(i.even?) ? ( r+= x.upcase) : ( r+= x.downcase)
i = i + 1
 }
 puts r


