require "./datetime_helper.rb"
class Decade
    include DateTime

    def no_of_months
        puts DateTime::FIRST_DAY
        number = 10 * 12
        puts number
    end
end

decade = Decade.new
puts DateTime::FIRST_DAY
DateTime.weeks_in_month
decade.no_of_months