<<<<<<< HEAD
class ReceiveTextController < ActionController
  def index
    # let's pretend that we've mapped this action to
    # http://localhost:3000/sms in the routes.rb file
    http://mrelief.herokuapp.com/
=======
class ReceiveTextController < ApplicationController
  def index
    # let's pretend that we've mapped this action to
    # http://localhost:3000/sms in the routes.rb file
>>>>>>> c0164a58175f9e78d41bf18b868ca81e91d83fb0

    message_body = params["Body"]
    from_number = params["From"]

    SMSLogger.log_text_message from_number, message_body
  end
end
