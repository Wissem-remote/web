c = ARGF.filename
a=" "
b=" "


ARGF.each_line {|line|(c == ARGF.filename) ? (a += line) : (b += line)}


a = a.scan(/./)
b = b.split(' ')
o = 1



i = 0
b.each {|x| 
lines = b.index(x)



    x.scan(/./){ |z|
    (i >= 5) ? (i=0) : (i += 1)
     if  a[o] == z
       puts "ligne #{lines} cologne #{i}"
        o += 1 
        
    end
    }
  


}


