class Prime

  def find_prime(number)
    array = []
    primes = [2, 3, 5, 7]
    for i in 2..number.to_i do
      array.push(i)
    end
    # puts array
    primes.each do |value|
      array.each do |n|
        val = "#{value}"
        if (n > val.to_i) && (n % val.to_i === 0)
          array.delete(n)
        end
      end
    end
    return "#{array.join(", ")} are the prime numbers up to #{number}"
  end


end
