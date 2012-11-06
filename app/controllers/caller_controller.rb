class CallerController < ActionController::Base
  def index
    resp = '<?xml version="1.0" encoding="UTF-8"?>
              <Response>
              <Say voice="woman" language="fr">Chapeau!</Say>
            </Response>'
    render xml: resp
  end
end
