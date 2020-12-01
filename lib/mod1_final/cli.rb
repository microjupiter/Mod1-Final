class Cli

    def start
        puts "Welcome to the CTA Train Finder"
        puts "Let's find you a train!"
        GetTrains.load_data
        # GetStations.load_data
        main_menu 
    end

    def main_menu
        puts "Enter a number to see info for the selected line or exit"
        puts "1. Red."
        puts "2. Blue."
        puts "3. Brown."
        puts "4. Purple."
        puts "5. Green."
        puts "6. Pink."
        puts "7. Yellow."
        puts "8. Orange."
        puts "9. Exit."
        print "Menu Select: "
        menu_options
    
    end

    def menu_options
        input = gets.chomp
            if input == "1"
        puts GetTrains.load_data
        main_menu
            elsif input == "2"
        puts TBD
        main_menu
            elsif input == "3"
        puts TBD
        main_menu
            elsif input == "9"
        puts "Thanks for riding with the CTA. Doors closing."
        exit
            else
        puts "Enter a valid selection."
        menu_options
    end
end
end