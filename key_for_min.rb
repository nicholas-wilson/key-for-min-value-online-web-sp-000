# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_value = 0
  key = nil
  current_iteration = 0
  name_hash.each do |name, value|
    if current_iteration == 0
      lowest_value = value
      key = name
    end
    if lowest_value > value
      lowest_value = value
      key = name
    end
    current_iteration += 1
  end
  key
end
