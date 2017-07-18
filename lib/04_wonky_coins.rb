# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

# ---> Recursion, keep on calling until a base case

require 'pry-byebug'

def wonky_coins_iter(n)
  return 1 if n.zero?
  coins = [n]
  zero_coins = []

  until coins.empty?
    coin = coins.pop
    2.upto(4) do |i|
      if (coin / i).zero?
        zero_coins << 0
      else
        coins << coin / i
      end
    end
  end

  zero_coins.count
end

def wonky_coins_rec(n)
  return 1 if n.zero?
  wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end

def wonky_coins(n)
  cache = wonky_coins_cache_builder(n)
  cache[n]
end

def wonky_coins_cache_builder(n)
  cache = { 0 => 1 }
  cache.default = 0
  return cache if n.zero?

  (1..n).each do |i|
    coins = [i]
    until coins.empty?
      coin = coins.pop
      2.upto(4) do |j|
        if cache[coin / j]
          cache[i] += cache[coin / j]
        else
          coins << coin / j
        end
      end
    end
  end

  cache
end
