class Allergy
  def allergy_score(number)
    score = { "cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1}
    array = []
    person = number.to_i
    score.each do |key, value|
      allergen = "#{key}"
      total = "#{value}".to_i
      divisible = (person / total).to_i
      remainder = (person -= (divisible * total))
      if person === 0
        array.push(allergen)
        break
      end
      if divisible >= 1
        array.push(allergen)

      end
      # puts remainder


    end
    return "You are allergic to #{array.join(", ")}"
  end
end
