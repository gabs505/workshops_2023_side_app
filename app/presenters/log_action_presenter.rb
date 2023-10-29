class LogActionPresenter
  def initialize(log)
    @log = log
  end

  def action_type
    status = @log.routing_key.gsub('basic_app.book_loans.', '')
    case status
    when 'checked_out'
      "Created"
    when 'cancelled'
      "Cancelled"
    else
      "Unknown"
    end
  end
end