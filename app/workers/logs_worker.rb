class LogsWorker
  include Sneakers::Worker

  from_queue 'logs_queue', exchange: 'basic_app_topic', exchange_type: :topic, routing_key: 'basic_app.book_loans.*'

  def work(data)
    parsed_data = JSON.parse(data)
    Log.create!(data: parsed_data, user_id: parsed_data['user_id'])
  end
end