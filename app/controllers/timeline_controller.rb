class TimelineController < ApplicationController
	def show
		require 'open-uri'
		@json = open("http://vagalumewifi.com.br/timeline.json")
		@dados = JSON.load(@json)
	end
end
