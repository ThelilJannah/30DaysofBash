#!/bin/bash
#3
fav_books=("Yinka, where's your husband?", "A thousand splendid suns", "Born on a Tuesday")

for book in "${!fav_books[@]}"; do
  echo "$book: ${fav_books[$book]}"
done

