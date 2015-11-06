
class TodoItem
	attr_accessor :state
	attr_accessor :description
	def initialize(w, t =false)
		@state = t
		@description = w
	end
	
	def done?
		@state
	end
	def done!
		@state = true
	end

end
 
class TodoList
attr_accessor :name ,:color ,:position ,:items 
attr_accessor :items_pending, :items_done
  def initialize(w, h={:color => :blue})
    @name = w
    @color = h [:color]
    @position = 0
    @items = []
    @items_pending = []
    @items_done = []
  end
  def add(x)
  	if x.is_a? TodoItem 
  	 if x.state == true
  	 		@items[@position] = x
  			@items_done[@position] = x
  	 else
  	 	@items[@position] = x
	  	@items_pending[@position] = x
	  	@position +=1
  	 end
	else
	  	@items[@position] = x
	  	@items_pending[@position] = x
	  	@position +=1
  end
  end

  def find_by_description(w)
  	@items.each do |x|
  		if x.is_a? TodoItem
  			if x.description == w
  				p x
  			end	
  		end
  	end
  end
  def set_as_done(w)
  	@items.each do |x|
  		if x.is_a? TodoItem
  			if x.description == w
  				x.state = true
  			end	
  		end
  	end
  end	
 end