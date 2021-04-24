require 'pry'

module ArrayRefinement
  refine Array do
    def each
      for i in 0...size
        yield self[i] 
      end
      self
    end
  end 
end

using ArrayRefinement

a = [1,2,3,4]
pp a.each { |e| puts e }
 
