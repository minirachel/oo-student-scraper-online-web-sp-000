require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)

    site = Nokogiri::HTML(open(index_url))

    students = {}

      site.css("div.roster-cards-container").each do |student|

          students << {
            :name => student.css("h4.student-name").text,
            :location => student.css("p.student-location").text,
            :profile_url => student.css(site.css("div.student-card a").attribute("href").value
            } 
      end
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end
