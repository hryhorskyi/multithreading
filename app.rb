# frozen_string_literal: true

require 'httparty'

start_at = Time.now

threads = []

20.times do
  threads << Thread.new { HTTParty.get('https://rubyonrails.org') }
end

threads.each(&:join)

end_at = Time.now

puts "Duration of handling: #{end_at - start_at}"