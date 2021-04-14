require 'io/console' # librairie qui masque les characteres tapé
def ques
    input = gets.chomp 
    if input == "HELP"
        puts "Voici la liste des commandes"
        puts"NAME_S => recherche une personne"
        puts"AGE_S => recherche une personne qui a cet âge"
        puts"FOLLOW_G => vous verrez"
        ques
    elsif input == "NAME_S"
        puts "Trouvé"
        ques
    elsif input == "AGE_S"
        puts "Trouvé"
        ques
    elsif input == "FOLLOW_G"
        puts "le lien de la CIA"
        puts "https://github.com/Lehoax"
        ques
    end
end

def welcome_screen
    puts"                               .,/%&%%%%%%%%&&(,.                               "
    puts"                           ,/&%%%* # (*%%(,#% .%%%%#,                           "
    puts"                        ./&%%# ( %#%%%%%%%%%%%#/.% *%%&,                        "
    puts"                      .(%%%(#,%%%%%%#,*..%%%%%%%%%#  .%%&,                      "
    puts"                     *&%% #,%%%%%%%%%%#  .%%%%%%%%%%%%%%%%%,                    "
    puts"                    *%%#./%%%%%%%%%%%%. .,%%%%%%%%%%%%*#%%%&*                   "
    puts"                   ,&%* (%%%%%%%%%  &% .%. %%%%%%%%%%%%, %%%&                   "
    puts"                   /%%/#(%%%%%%%          .....(%%%%%%%%/((%%,                  "
    puts"                   (%% *#%%%%%%%       (.......(%%%%%%%%  ,%%,                  "
    puts"                   /%%,..%%%%%%%    ...CIA...  (%%%%%%%%(%/%%,                  "
    puts"                   ,&%/%,%%%%%%%   ../###(.   .(%%%%%%%% %%%&.                  "
    puts"                    ,&%%%%%%%%%% ...,..#. .....(%%%%%%%%%%%&*                   "
    puts"                     ,&%%%/,/%%%...... . ......(%%%%,,#%%%&,                    "
    puts"                       *&%*,#(,%%(...  ..... ,%%%(,/#,&%&*                      "
    puts"                         ,&%%,,#,%,,/%%%%%%#,,,*((,#%%&*                        "
    puts"                            ,%%%%&*,,/(#/*,*,,(%%%&#*                           "
    puts"                                ,,(&&&%%%%&&&#**                                "
    print" \n"
    puts"si vous avez besoin d\'aide écrivez HELP" 
    ques
end



def signup
    puts"Bonjour si vous avez ce programme entre les mains c'est que vous venez d'accéder à l'habilitation secret défense"
    puts "definit ton mot de passe"
    print ">"
    gets.chomp
end




def login
    puts "rentre ton mot de passe"
    print ">"
    if password =  STDIN.noecho(&:gets).chomp
        welcome_screen
    end
end



password = signup

login