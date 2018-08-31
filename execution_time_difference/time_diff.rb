def my_min(list)
  # result = list.first
  list.each_with_index do |el, i|
    smallest = true
    list.each_with_index do |el2, j|
        smallest = false if i != j && el > el2
    end
    return el if smallest == true
  end
  nil
end

def my_min_two(list)
  min = list.first
  list.each do |el|
    min = el if el < min
  end
  min
end

def sub_sums(list)
  subsets = []
  max_sum = list[0]
  
  (0...list.length).each do |start|
    (start...list.length).each do |last|
      subsets << list[start..last]
    end
  end
  
  subsets.each do |subset|
    cur_sum = subset.reduce(:+)
    max_sum = cur_sum if cur_sum > max_sum
  end
  max_sum
end

def sub_sums_better(list)
  max_sum = list[0]
  cur_sum = 0
  
  list.each_with_index do |el, idx|
    if cur_sum + el < 0 # if updated cur_sum is negative, that would subtract value for the sum of next subarray
      cur_sum = 0
    else
      cur_sum += el # if updated cur_sum is positive, that should be helpful for finding the next bigger sum 
      max_sum = cur_sum if cur_sum > max_sum
    end 
  end
  max_sum
end 