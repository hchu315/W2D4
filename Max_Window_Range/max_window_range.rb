def max_windowed_range(array, window_size)
  current_max_range = -1
  (0..array.length-1).each do |start|
    if start+window_size <= array.length
      window = array[start..start+window_size-1]
      min_val = window.min
      max_val = window.max
      range = max_val - min_val
      current_max_range = range if range > current_max_range
    else
      break
    end
  end
  current_max_range
end

#