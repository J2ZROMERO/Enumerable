require_relative 'MyEnumerable'
 class MyList
include MyEnumerable

    def initialize (list)
      @list = list
    end
  
    # filter?
    # any?
    def each
        
        
        if block_given?
        return     yield(@list)
        else
            puts "no  block"

        end
        
    end 
  end
  
  list = MyList.new([1, 2, 3, 4])
  
  list.each { |x| puts x }
  
  
