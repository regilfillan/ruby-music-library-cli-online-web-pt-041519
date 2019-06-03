module Concerns
  
  module Findable
  
    def find_by_name(name)
      self.all.detect{|s| s.name == name}
    end
  
    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end
    
  end
  
end
  
# module Concerns
#   module Findable
#     def self.find_by_name(name)
#       @@all.find{|song| song.name == name}
#     end
#     def self.find_or_create_by_name(name)
#       # @@all.find{|song| song.name == name}
#       find_by_name(name) || create(name)
#     end
#   end
# end
