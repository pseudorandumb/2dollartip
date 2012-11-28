class SmsController < ActionController::Base
  # Parameter Description
  # SmsSid  A 34 character unique identifier for the message. May be used to later retrieve this message from the REST API.
  # AccountSid  The 34 character id of the Account this message is associated with.
  # From  The phone number that sent this message.
  # To  The phone number of the recipient.
  # Body  The text body of the SMS message. Up to 160 characters long.
  # Twilio also attempts to look up geographic data based on the 'From' and 'To' phone numbers. Twilio sends the following parameters, if available:

  # Parameter Description
  # FromCity  The city of the sender
  # FromState The state or province of the sender.
  # FromZip The postal code of the called sender.
  # FromCountry The country of the called sender.
  # ToCity  The city of the recipient.
  # ToState The state or province of the recipient.
  # ToZip The postal code of the recipient.
  # ToCountry The country of the recipient.
  def create
    Rails.logger.debug "paramaters from text: #{params.inspect}"
    resp = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
              <Response>
                <Sms>I'm hungry!</Sms>
              </Response>"
    render xml: resp
  end
end