a = ARGV.first.to_i

def fac(n)

(n==1) ? ( return 1) : ( return n*fac(n-1))

end


puts fac(a)


