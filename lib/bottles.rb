class Bottles
  def verse(number)
    <<-VERSE
#{number} #{pluralizer(number)} of beer on the wall, #{number} #{pluralizer(number)} of beer.
Take one down and pass it around, #{number - 1} #{pluralizer(number - 1)} of beer on the wall.
  VERSE
  end

  def pluralize_bottle(number)
    case number
    when 1
      "bottle"
    when 0
      "no more bottles"
    else
      "bottles"
    end
  end
end
