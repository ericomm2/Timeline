class TimelineController < ApplicationController
	def show
		require 'open-uri'
		require 'date'
		@json = open("http://vagalumewifi.com.br/timeline.json")
		@dados = JSON.load(@json)
		@dados.sort! { |a,b| date_to_stamp(a['date']) <=> date_to_stamp(b['date']) }.reverse!
		@dados.each { |post| post['date'] = datetime_parse(post['date'])}
	end

	private
	def datetime_parse(string)
		datetime = DateTime.parse(string)
		datetime.strftime('%d %b %Y, %H:%M')
	end

	def date_to_stamp(string)
		datetime = DateTime.parse(string)
		datetime.to_i
	end
end
