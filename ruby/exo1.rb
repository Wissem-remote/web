puts "Entrez votre chiffre"
nb = gets.to_i



if  nb <= 0
    puts "Desoler votre chiffre est inferieur ou egale à zero "
elsif nb > 0
    wis = "#" * nb
    puts wis
else 
    puts "votre contenue ne correspont pas"
end
