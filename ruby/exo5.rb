c = ARGF.filename
a=" "
b=" "


ARGF.each_line {|line|(c == ARGF.filename) ? (a += line) : (b += line)}


a = a.scan(/./)
b = b.split(' ')
i = 1

b.each {|x| 
lines = b.index(x)



    x.scan(/./){ |z|
    if  a[i] == z
    puts "ligne #{lines} cologne #{x.index(z)}"
    i += 1 
    end
    }


}


