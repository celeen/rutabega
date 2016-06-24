require "pry-byebug"

module CustomHelpers
  SUMMER_SEASON_BEGINNING = Date.new(Date.today.year, 5, 29)
  SUMMER_SEASON_END = Date.new(Date.today.year, 10, 30)

  def date_of_next_market(today)
    if (SUMMER_SEASON_BEGINNING < today) && (today < SUMMER_SEASON_END)
      next_sunday(today)
    else
      third_sunday_of_the_month(today)
    end
  end

  def next_sunday(today)
    today + (7 - today.wday)
  end

  def third_sunday_of_the_month(today)
    first_of_the_month = Date.new(today.year, today.month, 1)
    next_sunday(first_of_the_month) + 14
  end

  def market_location(today)
    if (SUMMER_SEASON_BEGINNING < today) && (today < SUMMER_SEASON_END)
      "ByLineBank Parking Lot\n18th and Halsted"
    else
      "The Honky Tonk\n1800 S Racine"
    end
  end

  def market_time(today)
    if SUMMER_SEASON_BEGINNING < today < SUMMER_SEASON_END
      "9am - 2pm"
    else
      "11am - 3pm"
    end
  end
end
