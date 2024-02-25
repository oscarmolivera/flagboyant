require 'down'

class FetchFlagsService
  def self.download_and_attach_flags_to_countries
    countries = Country.all
    countries.each do |country|
      svg_url = "https://flagcdn.com/#{country.code.downcase}.svg" 
      svg_file = download_svg(svg_url)
      next unless svg_file

      country.flag.attach(io: svg_file, filename: "#{country.code.downcase}.svg")
    end
  end

  def self.download_svg(url)
    begin
      Down.download(url)
    rescue StandardError => e
      puts "Error downloading SVG: #{e.message}"
      nil
    end
  end
end