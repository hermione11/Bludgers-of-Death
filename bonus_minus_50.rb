class Bonusminus50
  def initialize(game_window, speed=1)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/dementor.png", true)
    @speed=speed
    reset!
  end
  
  def update
    if @y > @game_window.height
      reset!
    else
      @y = @y + @speed
    end
  end
  
  def draw
    @icon.draw(@x,@y,2)
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def reset!
    @y = 0
    @x = rand(@game_window.width)
  end
end