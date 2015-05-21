# class Cities < ActiveRecord::Base
class Cities

  # class variable vs constant variable?
  CITIES = %w(Dallas, Fort Worth, Arlington, Grand Prairie).freeze
  # include ActiveModel::Validations
  # validates_inclusion_of :city, :in => CITIES
  # @cities = ['Dallas', 'Fort Worth', 'Arlington', 'Grand Prairie']
  def self.get_city(city)
    if city.include? city
      puts "We have this city: #{city}"
    else
      puts "We have no ministries for this city."
    end
  end
end

# class Ministry
#
#   def self.city_to_ministry(city)
#
#   end
#   def self.get_ministries(city)
#
#   end
# end


Cities::get_city("Arlington")
Cities::get_city("Houston")
