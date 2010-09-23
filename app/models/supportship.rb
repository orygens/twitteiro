class Supportship < ActiveRecord::Base
  def user=(id)
    user_id = id
  end

  def supporter=(id)
    supporter_id = id
  end
  
end
