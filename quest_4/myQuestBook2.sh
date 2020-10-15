csv_quest_completed(){
    echo === Ongoing ===
    while IFS=";" read -r id name description quest_type completion_state quest_giver start_date end_date reward; do 
        state=$completion_state && if [[ $state -eq 1 ]]; 
                                    then
                                        echo "#$id $name $state" 
                                    fi
    done < questbook_data.csv;
}
csv_quest_ongoing(){
    echo === Completed ===
    while IFS=";" read -r id name description quest_type completion_state quest_giver start_date end_date reward; do 
        state=$completion_state && if [[ $state -eq 0 ]]; 
                                    then
                                        echo "#$id $name $state" 
                                    fi
    done < questbook_data.csv;
}
csv_quest_fail(){
    i=0
     echo === Completed ===
    while IFS=";" read -r id name description quest_type completion_state quest_giver start_date end_date reward; do 
        state=$completion_state && if [[ $state -eq 1 ]]; then exit
                                    elif [[ $state -eq 0 ]]; then exit 
                                    else echo Nothing
                                    fi 
    done < questbook_data.csv;
}
csv_quest_ongoing
csv_quest_completed
csv_quest_fail