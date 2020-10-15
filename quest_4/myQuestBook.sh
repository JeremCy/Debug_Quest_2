while IFS=";" read -r id name description quest_type completion_state quest_giver start_date end_date reward; do
  [[ "$name"!=*";"* ]] && echo "#$id $name"
done < questbook_data.csv; 