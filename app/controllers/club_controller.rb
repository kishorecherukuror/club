class ClubController < ApplicationController
 
  def coffee
  end
  def wine
  end
  def beer
    dob = User.find(current_user)
    puts "**********************"
    puts dob.dob
    puts "**********************"  
    
    @year = Date.today.year - dob.year
    puts @year

  end
  def cigars
  end
  def games
  end
  def flowers
  end

end
