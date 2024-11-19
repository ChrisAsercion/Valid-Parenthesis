class ValidParentheses

  def valid?(string)
    s = string
    #splits into an array of characters
    s_array = s.chars
    until s_array.empty? 
      outer_layer = s_array.first + s_array.last
      if valid_bracket(outer_layer)
        s_array.shift 
        s_array.pop
      else
        return false
      end
    end
    true
  end

  def valid_bracket(bracket)
    if bracket == "[]" || bracket == "()" || bracket == "{}"
      true
    else 
      false
    end
  end
end