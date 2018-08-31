def first_anagram?(str1, str2)
  perm = str1.chars.permutation
  arr2 = str2.chars
  perm.include?(arr2)
end

def second_anagram?(str1, str2)
  str1.each_char do |chr|
    if str2.include?(chr)
      idx = str2.index(chr)
      str2 = str2[0...idx] + str2[idx+1..-1]
    else
      return false
    end
  end  
  return false if str2 != ''
  true
end

def third_anagram?(str1,str2)
  sorted_str1 = str1.chars.sort
  sorted_str2 = str2.chars.sort
  
  return true if sorted_str1 == sorted_str2
  false
end

def fourth_anagram?(str1,str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.each_char do |chr|
    hash1[chr] += 1 
  end
  
  str2.each_char do |chr|
    hash2[chr] += 1 
  end
  
  hash1 == hash2
end

#bonus

def fourth_anagram_bonus?(str1,str2)
  hash = Hash.new(0)
  
  str1.each_char do |chr|
    hash[chr] += 1 
  end
  
  str2.each_char do |chr|
    hash[chr] -= 1 
  end
  
  hash.values.each do |v| 
    return false if v != 0
  end
  
  true
end

