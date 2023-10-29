class LoanCreatedLogWorker
  include Sneakers::Worker

  ROUTING_KEY = 'basic_app.book_loans.checked_out'

  from_queue 'logs_queue', exchange: 'basic_app', exchange_type: :direct, routing_key: ROUTING_KEY

  def work(data)
    CreateLogService.new(data, ROUTING_KEY).perform
  end
end