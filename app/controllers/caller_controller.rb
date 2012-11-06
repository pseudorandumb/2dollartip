class CallerController < ActionController::Base
  def index
    resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Say voice=\"woman\" language=\"en\">Fuck off! #{params['Digits']}</Say></Response>"
    render xml: resp
  end

  def create
    Rails.looger.debug("+++ params: params.inspect")
    resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Say voice=\"woman\" language=\"en\">Fuck off! #{params['Digits']}</Say></Response>"
    render xml: resp
  end
end
