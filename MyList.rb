require_relative 'myEnumerable'

class MyList
  include MyEnumerable
  def initialize (list)
    @list = list
  end

  def each
    yield(@list)
  end 
end

list = MyList.new([1, 2, 3, 4] )
puts(list.all? { |e| e < 5} )
puts(list.all? { |e| e > 5} )
puts(list.any? { |e| e == 2} )
puts(list.any? { |e| e == 5} )
puts(list.filter { |e| e.even?} )