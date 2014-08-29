class ReceiveTextController < ActionController
  def index
    # let's pretend that we've mapped this action to
    # http://localhost:3000/sms in the routes.rb file
    http://mrelief.herokuapp.com/

    message_body = params["Body"]
    from_number = params["From"]

    SMSLogger.log_text_message from_number, message_body
  end
end
