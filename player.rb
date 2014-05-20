require 'gosu'
class Player
	def initialize(window)
		@image = Gosu::Image.new(window, "media/hero.png", false)
		@x = @y = @vel_x = 0.0
		@score = 0
	end

	def warp(x, y)
		@x, @y = x, y
	end

	def move_left
		@vel_x -= 2
	end

	def move_right
		@vel_x += 2
	end

	def move
		if ((@x >= 320 && @vel_x <= 0) || (@x <= 160 && @vel_x >=0))
			@x += @vel_x
		elsif @x < 320 && @x > 160
			@x += @vel_x
		end

		@vel_x *= 0.95
		puts @x
	end

	def draw
		@image.draw(@x, @y, 1)
	end
end
