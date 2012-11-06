class CallerController < ActionController::Base
  def index
    resp = ""
    if params['Digits']
      resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
            <Response>
              <Say voice=\"woman\" language=\"en\">Fuck off! #{params['Digits']]}</Say>
            </Response>"
    else
      resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
              <Response>
                <Gather timeout=\"10\" finishOnKey=\"*\">
                    <Say>Press one to listen to a message from the last caller and record a message for the next caller press two to play the song of the week. Press three to listen to a poem.</Say>
                </Gather>
              </Response>"
    end
    render xml: resp
  end
end
