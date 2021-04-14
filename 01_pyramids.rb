def half_pyramids
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts "Saisie entre 1 et 25."

    print ">"

    nb = gets.chomp.to_i
    i = 0
    char = "#"

    if nb > 0 && nb <= 25
        while i < nb
            puts char
            char = "#{ char }#"
            i += 1
        end
    end
end

def full_pyramids
        puts "Saisie entre 1 et 25."

    print ">"

    nb = gets.chomp.to_i
    i = 0
    char = "#"
    if nb > 0 && nb <= 25
        while i < nb
            puts char.center(nb*2) 
            char = "#{ char }##"
            i += 1
        end
    end
end

def wtf_pyramids
    puts "Saisie entre 1 et 25."

print ">"

nb = gets.chomp.to_i
i = 0
char = "#"
if nb > 0 && nb <= 25
    while i < nb/2
        if i.even? == false
            print ""
        end
        puts char.center(nb*2)
        char = "#{ char }##"
        i += 1
    end

    while i >= nb/2
        puts char.center(nb*2).gsub(/^\##/, "")
        char = "#{ char }".gsub(/^\##/, "")
        i += 1
        if i == nb-1
            puts "#".center(nb*2)
            i = -1
        end
    end
end
end

wtf_pyramids