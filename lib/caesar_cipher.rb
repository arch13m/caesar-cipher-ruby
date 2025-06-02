# frozen_string_literal: true

def alphabet
  'abcdefghijklmnopqrstuvwxyz'
end

def alpha_lower_arr
  alphabet.split('')
end

def alpha_upper_arr
  alphabet.upcase.split('')
end

def sanitise_shift(shift)
  shift = sanitise_shift(shift - 26) if shift > 25
  shift = sanitise_shift(shift + 26) if shift.negative?
  shift
end

def caesar_cipher(string, shift)
  # for each character in string:
  # find the index of the character in alphabet
  # subtract shift from this index
  # return alphabet at this new index
  # join the results of each character back together
  splitted = string.split('')
  shifted = []
  splitted.each do |i|
    if alpha_lower_arr.include?(i)
      idx = alpha_lower_arr.find_index(i)
      new_idx = sanitise_shift(idx + shift)
      shifted.push(alpha_lower_arr[new_idx])
    elsif alpha_upper_arr.include?(i)
      idx = alpha_upper_arr.find_index(i)
      new_idx = sanitise_shift(idx + shift)
      shifted.push(alpha_upper_arr[new_idx])
    else
      shifted.push(i)
    end
  end
  shifted.join
end
