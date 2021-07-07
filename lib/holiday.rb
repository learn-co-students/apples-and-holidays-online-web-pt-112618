require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |holiday, details|
  if holiday == :winter
  details.each do |attribute,data|
    data<<supply
    end
  end
end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |holiday, details|
  if holiday == :spring
  details.each do |attribute,data|
    data<<supply
    end
  end
end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
 # holiday_hash.each do |holiday, details|
#  if (holiday == season)
  holiday_hash[season][holiday_name]=supply_array
 #   end
#  end

  

  # holiday_hash[:season]<<{:holiday_name=>:supply_array}
  
return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
lala=[]
holiday_hash.each do |holiday, details|
  if holiday == :winter
  details.each do |attribute,data|
   data.each do |la|
    lala<<la
  end
    end
  end
end
return lala
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |holiday, details|
  puts "#{holiday.to_s.capitalize}:"
  
  details.each do |attribute,data|
 # print "   \\\r"
  s=""
   data.each do |la|
    s<<"#{la}, "
  end
  s2=attribute.to_s
s2.gsub!("_", " ")
#s2.capitalize
#s2.split.map { |x| x.capitalize }.join(" ")
s2.gsub!(/\w+/, &:capitalize)
  puts "  #{s2}: #{s.chomp(", ")}"
    end
  end

  

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
lala=[]

holiday_hash.each do |holiday, details|
  
  details.each do |attribute,data|
  t=false
   data.each do |la|
   s=la.to_s
    if (s.include? "BBQ")
    t=true
  end
end
  if (t==true)
  lala<<attribute
end
  end
end
return lala
end







