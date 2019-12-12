class Change


  def make_change(number)
    coins = {"quarter" => 25, "dime" => 10, "nickle" => 5, "penny" => 1}
    new = number
    if new.include?(".")
      whole = new.delete!(".").to_f
    else
      whole = new.concat("00").to_i
    end
    array = []
          coins.each do |key, value|
          val = "#{value}".to_i
          ring = "#{key}"
              divisible = (whole / value).to_i
              remainder = (whole -= (divisible * val))
              array.push("#{divisible.to_i} #{ring}")

      end
      return array.join(", ")

  end

end
