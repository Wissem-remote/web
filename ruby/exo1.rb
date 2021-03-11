puts "Entrez votre chiffre"
nb = gets.to_i



if  nb <= 0
    puts "Desoler votre chiffre est inferieur ou egale à zero "
elsif nb > 0
    n = 0
    x = nb
     while n < nb
        n= n + 1
    wis = " "*x +"#" * n
    puts wis
    x = x-1
     end
else 
    puts "votre contenue ne correspont pas"
end
