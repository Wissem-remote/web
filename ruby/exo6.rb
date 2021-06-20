a = ARGV[0]
b = ARGV[1]


tab = " "

File.open(b).each_line {|line| tab += line}

c = a.split('').sort.join(' ')
tab = tab.split(' ')

tab.each{|x|
if  x.split('').sort.join(' ') == c 
        puts x
end
}


            
