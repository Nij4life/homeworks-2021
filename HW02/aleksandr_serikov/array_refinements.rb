require 'pry'

module ArrayRefinement

  refine Array do
  
    def each
      for i in 0...size
        yield self[i] 
      end
      self
    end
    
    def map
    new_array = []
    for i in 0...size
      new_array << (self[i] && yield(self[i]))
    end
    
    new_array
    end
    
  end 
  
end

