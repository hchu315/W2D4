def bad_two_sum?(arr, target_sum)
  arr.each_with_index do |el, i|
    arr.each_with_index do |el2, j|
      if j > i
        return true if el + el2 == target_sum
      end
    end
  end
  false
end

#time complexity is O(n^2) or quadratic

def okay_two_sum?(arr, target_sum)
  arr.sort!
  small_idx = 0
  large_idx = arr.length - 1
  while small_idx < large_idx
    cur_sum = arr[small_idx] + arr[large_idx]
    if cur_sum == target_sum
      return true
    elsif cur_sum < target_sum
      small_idx += 1
    else 
      large_idx -= 1
    end
  end
  false 
end

def two_sum?(arr, target_sum)
  hash = Hash.new(false)
  arr.each do |num|
    complete = target_sum - num
    if hash[complete] == true
      return true
    else
      hash[num] = true
    end 
  end
  false 
end

