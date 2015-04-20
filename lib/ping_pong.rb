class Fixnum
  define_method(:ping_pong) do
    new_array = Array (1..self)
    pp_array = []
    new_array.each() do |number|
      if number.%(3).eql?(0).&(number.%(5).eql?(0))
        pp_array.push("ping-pong")
      elsif number.%(3).eql?(0)
        pp_array.push("ping")
      elsif number.%(5).eql?(0)
        pp_array.push("pong")
      else
        pp_array.push(number)
      end
    end
    pp_array
  end
end
