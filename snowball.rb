require_relative 'circle'
require 'gosu'

class Snowball
	attr_reader :x, :y

	def initialize(window, xpos, ypos, dir)
		@img = Gosu::Image.new(window, Circle.new(10), false)
		if dir
			@color = Gosu::Color.new(0xffffffff)
		else
			@color = Gosu::Color.new(0xffffff30)
		end

		@x = xpos
		@y = ypos
		if dir
			@vel_x = 15
		else
			@vel_x = -15
		end
	end

	def move
		@x += @vel_x
	end

	def draw
		@img.draw(@x - @img.width / 2.0, @y - @img.height / 2.0,
		          ZOrder::Snowball, 1, 1, @color)
	end
end
