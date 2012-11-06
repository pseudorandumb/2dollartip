class AudioController < ActionController::Base
def create 
# RecordingUrl  the URL of the recorded audio
# RecordingDuration the duration of the recorded audio (in seconds)
# Digits  the key (if any) pressed to end the recording or 'hangup' if the caller hung up
  Audio.create(url: params['RecordingUrl'], duration: params['RecordingDuration'])
  render xml: "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response><Say voice=\"woman\" language=\"en\">Thank You!</Say></Response>"
end