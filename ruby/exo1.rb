


nb = ARGV

(nb.count > 1) ? (puts 'desoler il y a tros argument') : (arg = nb.first.to_i)

case arg
when 0 then puts "c'est un carractaire"
when 1..30 then 1.upto(arg){ |n| printf "%#{arg+arg+1}s","# "*n +"\n" }
when 30.. then puts "desoler votre chiffre est tros haut"
end


