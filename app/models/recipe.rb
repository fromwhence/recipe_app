class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")   
  end

  def formatted_prep_time
    # input: 125
    # output: "2 Hours, 5 Minutes"
    # find 

    hours = prep_time / 60
    minutes = prep_time % 60
    "#{hours} Hours, #{minutes} Minutes."
  end
end