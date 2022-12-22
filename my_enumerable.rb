module MyEnumerable
    def all?
      @list.each { |item| return false unless yield(item) }
      true
    end
  
    def any?
      @list.each { |item| return true if yield(item) }
      false
    end
  
    def filter
      arr = []
      @list.each { |item| arr.push(item) if yield(item) }
      arr
    end
  end
  