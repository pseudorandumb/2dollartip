class CallerController < ActionController::Base
  def index
    resp = "<?xml version="1.0" encoding="UTF-8"?>
              <Response>
              <Say voice="woman" language="fr">Chapeau!</Say>
            </Response>"
    render xml: resp
  end

#  require "twilio-ruby"
 
# class AppointmentreminderController < ApplicationController
 
#   # your Twilio authentication credentials
#   ACCOUNT_SID = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
#   ACCOUNT_TOKEN = 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY'
 
#   # base URL of this application
#   BASE_URL = "http://www.yourserver.com:3000/appointmentreminder"
 
#   # Outgoing Caller ID you have previously validated with Twilio
#   CALLER_ID = 'NNNNNNNNNN'
 
#   def index
#   end
 
#   # Use the Twilio REST API to initiate an outgoing call
#   def makecall
#     if !params['number']
#       redirect_to :action => '.', 'msg' => 'Invalid phone number'
#       return
#     end
 
#     # parameters sent to Twilio REST API
#     data = {
#       :from => CALLER_ID,
#       :to => params['number'],
#       :url => BASE_URL + '/reminder',
#     }
 
#     begin
#       client = Twilio::REST::Client.new(ACCOUNT_SID, ACCOUNT_TOKEN)
#       client.account.calls.create data
#     rescue StandardError => bang
#       redirect_to :action => '.', 'msg' => "Error #{bang}"
#       return
#     end
 
#     redirect_to :action => '', 'msg' => "Calling #{params['number']}..."
#   end
end
