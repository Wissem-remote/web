a = ARGV[0]

suduko = [ ]
po = 0

File.foreach(a) {|line| suduko[po] = line.chomp.split('')

po +=1
}


def print_s(suduko)

i=0
while (i < suduko.count)
    j=0
while (j < suduko[i].count)
    print suduko[i][j]
    j+=1
end
print "\n"
i += 1
end
end

def init_a()
    n_array = []
    val = 1
    while (val < 10)
        n_array[val]= 0
        val += 1
    end
    return(n_array)
end

def check_l(suduko, i)
    array = init_a()
    j= 0
    while (j < suduko[i].count)
        val = suduko[i][j].to_i
        if ( val > 0 && val < 10)
        array[val] += 1
        if (array[val] > 1)
            return(false)
        end
        end 
    j += 1
    end
    return(true)
end

def check_c(suduko, j)
    array = init_a()
    i= 0
    while (i < suduko.count)
    val = suduko[i][j].to_i
        if ( val > 0 && val < 10)
            array[val] += 1
            if (array[val] > 1)
            return(false)
            end
        end 
    i += 1
    end
return(true)
end

def check_sq(suduko, i, j)
array = init_a()
    s_i= (i / 4) * 4
    s_j= (j / 4) * 4
    i = 0
        while (i < s_i + 3)
            j=0
            while (j < s_j + 3)
            
            val = suduko[i][j].to_i
                if ( val > 0 && val < 10)
                array[val] += 1
                    if (array[val] > 1)
                        return(false)
                    end
                end
            j +=1
            end
        i += 1
        end
    return(true)
end

def solve_s(suduko) 
i=0
            while (i < suduko.count)
            j=0
                while (j < suduko[i].count)
                    if (suduko[i][j] == '_')
                        n_v = 1
                        while (n_v < 10)
                            suduko[i][j] = n_v
                        
                                if (check_l(suduko, i) && check_c(suduko, j) && check_sq(suduko, i, j))
                                suduko = solve_s(suduko.map.(&:clone))
                                    if (suduko != false)
                                        return(suduko)
                                    end
                                end

                            n_v +=1
                        end
                        return (false)
                    end  
                j+=1
                end

            i += 1
            end
        return(sudoku)
end

def check_s(suduko)
    sudoku = solve_s(suduko)
    if (sudoku == false)
        puts "Error"
    else
        print_s(sudoku)
    end
end


check_s(suduko)