class Bottles
  def verse(number)
    <<-VERSE
#{first_verse(number)}
#{second_verse(number - 1)}
  VERSE
  end

  def first_verse(number)
    case number
    when 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer."
    when 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer."
    end
  end

  def second_verse(number)
    case number
    when 1
      "Take one down and pass it around, #{number} bottle of beer on the wall."
    when 0
      "Take it down and pass it around, no more bottles of beer on the wall."
    when -1
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{number} bottles of beer on the wall."
    end
  end

  def verses(one, two)
    <<-VERSE
#{first_verse(one)}
#{second_verse(one - 1)}

#{first_verse(two)}
#{second_verse(two - 1)}
  VERSE
  end

end
