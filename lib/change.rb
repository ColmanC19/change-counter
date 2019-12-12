class Change


  def make_change(number)
    coins = {"quarter" => 25, "dime" => 10, "nickle" => 5, "penny" => 1}
    whole = number.delete!(".").to_f
    array = []
          coins.each do |key, value|
          val = "#{value}".to_i
          ring = "#{key}"
              divisible = (whole / value).to_i
              puts whole
              remainder = (whole -= (divisible * val))
              array.push("#{divisible.to_i} #{ring}")
              puts divisible
              puts remainder

      end
      return array.join(", ")

  end

end
