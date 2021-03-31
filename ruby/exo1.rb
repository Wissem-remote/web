
nb = ARGV

case nb.count
when 1 then arg = nb.first.to_i
when 2.. then puts 'desoler il y a tros argument'
end 
case arg
when 0 then puts "c'est un carractaire"
when 1..30 then 1.upto(arg){ |n| printf "%#{arg+arg+1}s","# "*n +"\n" }
when 31.. then puts "desoler votre chiffre est tros haut"
end


