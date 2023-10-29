class CreateLogService
  def initialize(data, routing_key)
    @data = data
    @routing_key = routing_key
  end

  def perform
    parsed_data = JSON.parse(@data)
    Log.create!(data: parsed_data, user_id: parsed_data['user_id'], routing_key: @routing_key)
  end
end