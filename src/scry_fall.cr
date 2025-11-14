require "json"
require "http/client"

class Scryfall
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.scryfall.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_sets() : JSON::Any
    JSON.parse(
      @http_client.get("/sets/", headers: @headers).body)
  end

  def get_set_by_code(code : String) : JSON::Any
    JSON.parse(
      @http_client.get("/sets/#{code}", headers: @headers).body)
  end

  def get_set_by_scryfall_id(scryfall_id : String) : JSON::Any
    JSON.parse(
      @http_client.get("/sets/#{scryfall_id}", headers: @headers).body)
  end

  def search_cards(
      query : String, parameters : String = None) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/search?q=#{query}", headers: @headers).body)
  end

  def get_random_card() : JSON::Any
    JSON.parse(
      @http_client.get("/cards/random", headers: @headers).body)
  end

  def get_card_by_multiverse(multiverse_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/multiverse/#{multiverse_id}", headers: @headers).body)
  end

  def get_card_by_mtgo(mtgo_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/mtgo/#{mtgo_id}", headers: @headers).body)
  end

  def get_card_by_arena(arena_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/arena/#{arena_id}", headers: @headers).body)
  end

  def get_card_by_tcg_player(tcg_player_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/tcgplayer/#{tcg_player_id}", headers: @headers).body)
  end

  def get_card_by_market(card_market_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/cardmarket/#{card_market_id}", headers: @headers).body)
  end

  def get_card_by_scryfall_id(scryfall_id : String) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/#{scryfall_id}", headers: @headers).body)
  end

  def get_rullings_by_multiverse(multiverse_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/multiverse/#{multiverse_id}/rullings", headers: @headers).body)
  end

  def get_rullings_by_mtgo(mtgo_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/mtgo/#{mtgo_id}/rullings", headers: @headers).body)
  end

  def get_rullings_by_arena(arena_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/arena/#{arena_id}/rullings", headers: @headers).body)
  end

  def get_rullings_by_scryfall_id(scryfall_id : String) : JSON::Any
    JSON.parse(
      @http_client.get("/cards/#{scryfall_id}/rullings", headers: @headers).body)
  end

  def get_symbology() : JSON::Any
    JSON.parse(
      @http_client.get("/symbology", headers: @headers).body)
  end

  def get_catalog(catalog_type : String) : JSON::Any
    JSON.parse(
      @http_client.get("/catalog/#{catalog_type}", headers: @headers).body)
  end

  def get_bulk_data() : JSON::Any
    JSON.parse(
      @http_client.get("/bulk-data", headers: @headers).body)
  end

  def get_bulk_data_by_id(data_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/bulk-data/#{data_id}", headers: @headers).body)
  end

  def get_bulk_data_by_type(data_type : String) : JSON::Any
    JSON.parse(
      @http_client.get("/bulk-data/#{data_type}", headers: @headers).body)
  end

  def get_migrations(page : Int32 = 1) : JSON::Any
    JSON.parse(
      @http_client.get("/migrations?page=#{page}", headers: @headers).body)
  end
end
