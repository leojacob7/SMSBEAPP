class TwilioService
    def initialize
      @account_sid = 'AC024ae74f58d6020bd5be705bfdc8284f'
      @auth_token = 'af13b08fae680b9998ef3611c0875213'
      @from = '+18445780397'
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    end
  
    def send_sms(to, body)
      @client.messages.create(
        from: @from,
        to: to,
        body: body
      )
    end
  end
  