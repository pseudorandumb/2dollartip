class CallerController < ActionController::Base
  def index
    resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Gather timeout=\"10\" finishOnKey=\"*\"><Say>Press one to listen to a message from the last caller and record a message for the next caller press two to play the song of the week. Press three to listen to a poem.</Say></Gather></Response>"
    render xml: resp
  end

  def create
    Rails.logger.debug("+++ params: params.inspect")
    case params['Digits']
    when 1
      "Zomg im leet"
    when 2
      "oom bop, bop bop, om bom, yea yeaaa"
    when 3
      "Roses are red, violets are blue. Steve rogenbock is better than you."
    else
      resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Say voice=\"woman\" language=\"en\">Fuck off! #{params['Digits']}</Say></Response>"
    end
    render xml: resp
  end
end
