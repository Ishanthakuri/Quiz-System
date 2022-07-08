#!/bin/bash
#secret key: 1
#Function to Display The welcome message
userValidation(){
    if [ -z $1 ] || [ -z $2 ]
    then
        echo -e "\n---------Please enter the Username or Password---------- (≖_≖ )\n"
        exit
    elif [ ! -z $3 ]
    then
        echo -e "\n----Third Parameter is not accepted.----- (≖_≖ )\n"
        exit
    else
        #calling welcomeAndPassword Function
        welcomeAndPassword
        echo -e "\nUserName: $1 "
        echo -e "UserId: $2 \nDate: `date`"
    fi
}
#Function to welcome the user and verify the password.
welcomeAndPassword(){
    secretKey="1"
    userCount=1
    while [ $userCount -le 3 ]
    do
        echo "Secret Key: "
        read -s passwordInput
        if [[ $passwordInput == $secretKey ]]
        then
            # 1st Frame
            printf "\r< Loading..."
            sleep 0.5
            # 2nd Frame
            printf "\r> Loading..."
            sleep 0.5
            echo -e "\n\n**********************************"
            echo -e "------------------------------------"
            echo -e "\n| ʕ•́ᴥ•̀ʔっ WELCOME TO THE QUIZE    |\n"
            echo -e "------------------------------------"
            echo "*************************************"
            sleep 0.2
            break
        else
            timesCalculation=`expr 3 - $userCount`
            echo -e "\n Looks like the secret key is incorrect, $timesCalculation Tries Left. \n"
            ((userCount++))
            if [ $userCount -eq 4 ]
            then
                echo -e "\nYou have exceeded the maximum number of tries. Please try again later.\n"
                exit
            fi
        fi
    done
}

#Function to Diaplay Five Bands for you to choose from task-3
band(){
    echo -e "\n"
    echo -e "Guess the best music band name: \n"
    echo -e "(Only code is accepted).\n"
    echo -e "\n+ *********************** + \n"
    echo -e " -------------------------"
    echo -e " | CODE  | BAND NAMES    | "
    echo -e " -------------------------"
    echo -e " |  BEA  | Beatles       |\n "
    echo -e " |  AD   | AC/DC         |\n "
    echo -e " |  QUE  | Queen         |\n "
    echo -e " |  BLO  | Blondie       |\n "
    echo -e " |  NIR  | Nirvana       |\n "
    echo -e " -------------------------"
    echo -e "+ ********************** + "
    while true
    do
        echo -e "\nEnter your choice: "
        read band
        case $band in
            "BEA")
                sleep 0.5
                echo -e "\n --------------------------------------------------"
                echo -e "\n              ** Wrong! Try again **"
                echo -e " \nYou selected Beatles but it is not a best music band."
                echo -e " --------------------------------------------------"
                continue
            ;;
            "AD")
                sleep 0.5
                echo -e "\n --------------------------------------------------"
                echo -e "\n              ** Wrong! Try again **"
                echo -e " \nYou selected AC/DC but it is not a best music band."
                echo -e " --------------------------------------------------"
                continue
            ;;
            "QUE")
                sleep 0.5
                echo -e " \n--------------------------------------------------"
                echo -e "  \( ͡⚈ ͜ʖ ͡⚈)/       \( ͡⚈ ͜ʖ ͡⚈)/         \( ͡⚈ ͜ʖ ͡⚈)/"
                echo -e "         ᑕOᑎǤᖇᗩᑌTIOᑎᔕ! ƳOᑌ ᗯᗴᖇᗴ ᖇIǤᕼT!"
                echo -e " --------------------------------------------------"
                echo -e "|          The best music band is Queen          |"
                echo -e " -------------------------------------------------- \n\n"
                sleep 1
                echo -e "---------------------------------------------------------------------------------------"
                echo -e "\n Description: \n Queen, British rock band whose fusion of heavy metal, glam rock, and\n camp theatrics made it one of the most popular groups of the 1970s."
                echo -e "\n Trivia: \n 1) Their two albums "A Night at the Opera" (1975) and "A Day at the Races" (1976) \n    were titles based upon the films with The Marx Brothers of the same titles."
                echo -e "\n 2) The members of the classic lineup were Freddie Mercury, Brian May, Roger Taylor\n    and John Deacon.Following Mercury's death from AIDS in 1991, they have performed \n    with singers including Paul Rodgers and Adam Lambert."
                echo -e "\n 3) They were ranked #13 on VH1's 100 Greatest Hard Rock Artists and #33 on VH1's 100\n    Greatest Artists of Rock & Roll.\n"
                echo -e "---------------------------------------------------------------------------------------"
                break
            ;;
            "BLO")
                sleep 0.5
                echo -e " --------------------------------------------------"
                echo -e "\n         ** Wrong! Try again **"
                echo -e " \nYou selected AC/DC but it is not a best music band."
                echo -e " --------------------------------------------------"
                continue
            ;;
            "NIR")
                sleep 0.5
                echo -e " --------------------------------------------------"
                echo -e "\n         ** Wrong! Try again **"
                echo -e " \nYou selected Nirvana but it is not a best music band."
                echo -e " --------------------------------------------------"
                continue
            ;;
            *)
                sleep 0.5
                echo -e " --------------------------------------------------"
                echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) "
                echo -e "\n           ** ERROR ERROR ERROR **\N"
                echo -e "\n Invalid Selection. \n Please make a valid Selection."
                echo -e " --------------------------------------------------"
                continue
            ;;
        esac
        break
    done
}

#Function to display five members of the band
fiveMembers(){
    echo -e "\n\n"
    echo -e "Select your three favourite band members.\n"
    echo -e "In the Following sequence: \n FM DH JL "
    echo -e "\n+ *********************** + \n"
    echo -e " -------------------------"
    echo -e " | CODE  | BAND MEMBERS    | "
    echo -e " -------------------------"
    echo -e " |  JL   | John Lennon     |\n "
    echo -e " |  AY   | Angus Young     |\n "
    echo -e " |  FM   | Freddie Mercury |\n "
    echo -e " |  DH   | Debbie Harry    |\n "
    echo -e " |  KC   | Kurt Cobain     |\n "
    echo -e " -------------------------"
    echo -e "+ ********************** + "
    
    while true
    do
        echo -e "\nEnter your selection: "
        read player1 player2 player3 
        echo -e "\n "
        #Checking if the user has entered the correct code
        arryList=($player1 $player2 $player3)
        if [[ ! ${#arryList[@]} -eq 3 ]]
        then
            sleep 0.5
            echo -e " --------------------------------------------------"
            echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) \n"
            echo -e "\n           ** ERROR ERROR ERROR **"
            echo -e "\n You have entered invalid number of members. \n Please enter three members only. \n TRY AGAIN. \n 💪 ( ͡⚈ ͜ʖ ͡⚈) 👊."
            echo -e " --------------------------------------------------"
            continue
        elif [[ $player1 != $player2  && $player1 != $player3 && $player3 != $player2 ]] && 
        [[ $player1 == "JL" || $player1 == "player1Y" || $player1 == "FM" || $player1 == "DH" || $player1 == "KC" ]] && 
        [[ $player2 == "JL" || $player2 == "AY" || $player2 == "FM" || $player2 == "DH" || $player2 == "KC" ]] && 
        [[ $player3 == "AY" || $player3 == "FM" || $player3 == "DH" || $player3 == "KC" ]]
        then
            echo -e " You selected: $a $player2 $player3 "
        elif [[ $player1 == $player2 || $player1 == $player3 || $player2 == $player3 ]]
        then
            echo -e " --------------------------------------------------"
            echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) \n"
            echo -e "\n           ** ERROR ERROR ERROR **"
            echo -e "\n You have entered the same member names again. \n Please enter different members only. \n TRY AGAIN. \n 💪 ( ͡⚈ ͜ʖ ͡⚈) 👊."
            echo -e " --------------------------------------------------"
            continue
        
        else
            echo -e " --------------------------------------------------"
            echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) \n"
            echo -e "\n           ** ERROR ERROR ERROR **"
            echo -e "\n Make sure the code is right.\n OR\n It is in capital letters. \n TRY AGAIN. \n 💪 ( ͡⚈ ͜ʖ ͡⚈) 👊."
            echo -e " --------------------------------------------------"
            continue
        fi
        oneMemberSelection $player1 $player2 $player3
    done
    
}
#Function to ask user to restart the game.
restart(){
    echo -e "\n\n"
    echo -e "Do you want to restart the game?\n"
    echo -e "Press 1 to restart\n"
    echo -e "Press 2 to exit\n"
    read restart
    if [ $restart -eq 1 ]
    then
        #Calling the welcomeAndPassword function
        welcomeAndPassword
        #Calling the band function
        band
        #Calling the fiveMembers function
        fiveMembers
    elif [ $restart -eq 2 ]
    then
        exit
    else
        echo -e " --------------------------------------------------"
        echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) \n"
        echo -e "\n           ** ERROR ERROR ERROR **"
        echo -e "\n Invalid option selected. \n Please make a valid Selection. \n TRY AGAIN. \n 💪 ( ͡⚈ ͜ʖ ͡⚈) 👊."
        echo -e " --------------------------------------------------"
        restart
    fi
}

#Fuction to dispaly single member file.
oneMemberSelection(){
    echo -e "\n"
    echo -e " (>‿◠)✌                 (>‿◠)✌                    (>‿◠)✌ \n"
    echo -e " Now you can see there biblography of the band members.\n (Select an option only.)"
    oneMember=false
    until $oneMember
    do
        echo -e "\n"
        PS3="Choose One Member: "
        
        select var in $1 $2 $3
        do
            if [ -z $var ]
            then
                echo -e "\nPlease, Select an option."
            else
                case $var in
                    "JL")
                        cat JL.txt
                        restart
                        oneMember=true
                        break
                    ;;
                    "AY")
                        cat AY.txt
                        restart
                        oneMember=true
                        break
                    ;;
                    "FM")
                        cat FM.txt
                        restart
                        oneMember=true
                        break
                    ;;
                    "DH")
                        echo -e " ------------------------"
                        echo -e "\n  (ㆆ_ㆆ)    (ㆆ_ㆆ)   \n"
                        echo -e "\n File doesn't exist.\n"
                        echo -e " ------------------------"
                        sleep 0.5
                        #calling the band function.
                        band
                        #calling the fiveMembers function.
                        fiveMembers
                        oneMember=false
                    ;;
                    "KC")
                        echo -e " ------------------------"
                        echo -e "\n  (ㆆ_ㆆ)    (ㆆ_ㆆ)   \n"
                        echo -e "\n File doesn't exist.\n"
                        echo -e " ------------------------"
                        sleep 0.5
                        #calling the band function.
                        band
                        #calling the fiveMembers function.
                        fiveMembers
                        oneMember=false
                    ;;
                    *)  
                        sleep 0.5
                        echo -e " --------------------------------------------------"
                        echo -e "\n     (ㆆ_ㆆ)         (ㆆ_ㆆ)         (ㆆ_ㆆ) \n"
                        echo -e "\n           ** ERROR ERROR ERROR **"
                        echo -e "\n Invalid option selected. \n Please make a valid selection.\n TRY AGAIN. \n  💪 ( ͡⚈ ͜ʖ ͡⚈) 👊."
                        echo -e " --------------------------------------------------"
                        sleep 0.5
                        #calling the band function.
                        band
                        #calling the fiveMembers function.
                        fiveMembers
                        oneMember=false
                    ;;
                esac
            fi
            break
        done
    done
}
#calling userValidation function.
userValidation $1 $2 $3
sleep 0.5
#calling band function.
band
sleep 0.5
#calling fiveMembers function.
fiveMembers

