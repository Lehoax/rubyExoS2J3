$step = 0 
$max_step = 10
$resultGame = []

def throw_dice
    1 + rand(6)
end

def make_move throw_dice
    if throw_dice == 5 || throw_dice == 6
        $step  += 1
        puts "tu avance."
        puts "Tu est a #{ $step } "
    elsif throw_dice == 1
        $step  -= 1
        puts "tu recule."
        puts "Tu est a #{ $step } "
    else
        puts "rien ne se passe"
    end
end

# while $step < $max_step
#     jet = throw_dice
#     make_move(jet)
#     puts jet 
# end

def average_finish_time 
    
i = 0
    while i != 100
        $round = 0 
        while $step < $max_step
            jet = throw_dice
            make_move(jet)
            $round = $round + 1
        end
        $step = 0
        $resultGame.push($round)
        i +=1
    end
end

average_finish_time 
puts"La moyenne des tours de jeu est de : #{ $resultGame[1..100].inject{ |sum, el| sum + el }.to_f / $resultGame.size}"

