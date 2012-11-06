class CallerController < ActionController::Base
  def index
    resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Gather timeout=\"10\" finishOnKey=\"*\"><Say>Press one to listen to a message from the last caller and record a message for the next caller. Press two to play the song of the week. Press three to listen to a poem.</Say></Gather></Response>"
    render xml: resp
  end

  def create
    Rails.logger.debug("+++ params: params.inspect")
    case params['Digits']
    when "1"
      resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
      <Response>
      <Play>#{Audio.last.url}</Play>
        <Say>
          End of message. Please leave a message for the next person then press any key when done.
        </Say>
        <Record
            action=\"/audio\"
            maxLength=\"30\"
            />
        <Say>I did not receive a recording</Say>
      </Response>"
    when "2"
      # https://dl.dropbox.com/u/21813690/SUGE%20KNIGHT1.mp3
      resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Play>https://dl.dropbox.com/u/21813690/SUGE%20KNIGHT1.mp3</Play></Response>"
    when "3"
      txt = "Roses are red, violets are blue. Steve rogenbock is better than you."
    else
      txt = "Fuck off! #{params['Digits']} isn't an option!"
    end
    resp = resp ? resp : "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Say voice=\"woman\" language=\"en\">#{txt}</Say></Response>"
    render xml: resp
  end
end
