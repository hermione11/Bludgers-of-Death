class Player
  
	def initialize(game_window)
	  @game_window = game_window
	  @icon = Gosu::Image.new(@game_window, "images/player1_icon.png", true)
	  @x = 50
	  @y = 50
	end
	
	def update
  end
  
  def draw
    @icon.draw(@x,@y, 1)
  end
  
  def move_left
    if @x < 0
      @x = 0
    else
      @x = @x -10
    end
  end
    
  def move_right
    if (@x > @game_window.width - 75)
     (@x = @game_window.width - 75)
    else
     @x = @x + 10
    end
  end
  
  def move_up
    if @y < 0
      @y = 0
    else
      @y = @y - 10
    end
  end
  def move_down
    if (@y > @game_window.height - 75)
      (@y = @game_window.height - 75)
    else
      @y = @y + 10
    end
  end

  def hit_by_spike_ball?(balls)
    balls.any?{|ball|
      if ball.my_type=="spike"
        Gosu::distance(@x,@y, ball.x, ball.y) < 50
        end
      }
    end
    
    def hit_by_round_ball?(balls)
      balls.any? {|ball|
        if ball.my_type=="round"
          Gosu::distance(@x,@y, ball.x, ball.y) < 50
          end
        }
      end
      
    def hit_by_Bonus50?(bonus)
      Gosu::distance(@x,@y, bonus.x, bonus.y) < 50
  end

end

