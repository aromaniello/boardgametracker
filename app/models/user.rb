class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :boardgames

  def import_boardgames(bgg_username)
    collection_xml = HTTParty.get("https://www.boardgamegeek.com/xmlapi2/collection?username=#{bgg_username}")
    collection_parsed_xml = Nokogiri::XML(collection_xml.body)
    items = collection_parsed_xml.xpath("//item")

    items.each do |item|
      bgg_id = item.attributes["objectid"].value.to_i

      # create the boardgame if it doesn't already exist
      if self.boardgames.find_by(bgg_id: bgg_id).blank?
        new_bg = self.boardgames.new(bgg_id: bgg_id)

        bg_xml = HTTParty.get("https://www.boardgamegeek.com/xmlapi2/thing?id=#{bgg_id}")
        bg_parsed_xml = Nokogiri::XML(bg_xml.body)
        bg_parsed_xml.xpath("//item").children.each do |child|
          case child.name
          when "name"
            if child.attributes["type"].value == "primary"
              new_bg.name = child.attributes["value"].value
            end
          when "thumbnail"
            new_bg.thumbnail_url = child.text
          when "image"
            new_bg.thumbnail_url = child.text
          when "description"
            new_bg.description = child.text
          when "yearpublished"
            new_bg.year_published = child.attributes["value"].value.to_i
          when "minplayers"
            new_bg.min_players = child.attributes["value"].value.to_i
          when "maxplayers"
            new_bg.max_players = child.attributes["value"].value.to_i
          when "minplaytime"
            new_bg.min_playing_time = child.attributes["value"].value.to_i
          when "maxplaytime"
            new_bg.max_playing_time = child.attributes["value"].value.to_i
          when "minage"
            new_bg.min_age = child.attributes["value"].value.to_i
          end
        end

        new_bg.save!
      end
    end
  end
end
