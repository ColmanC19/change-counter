class Allergy
  def allergy_score(number)
    score = { "cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1}
    array = []
    person = number.to_i
    score.each do |key, value|
      puts person
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
    return array.join(", ")
  end
end
