def line (katz_deli)
    position = 1
    queue = []
    if katz_deli.length == 0
        puts "The line is currently empty."
    else 
        katz_deli.each.with_index do |name, index| #each with index for numerical order. +1 index bc comp starts 0, human starts 1
            queue.push ("#{index+1}. #{name}") #push adds to end of array. index for line ; name
            position +=1
    end
    puts "The line is currently: #{queue.join(" ")}" #links/joins those in queue
    end
end

def take_a_number (katz_deli, name)
    katz_deli.push(name) #adds to end of array
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line." # # is name and # is number in queue
end

def now_serving (katz_deli)
    if katz_deli.empty? # < dont know what "?" is for, but it cleared a test.
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift #remove from beginning of array(line)
    end
end