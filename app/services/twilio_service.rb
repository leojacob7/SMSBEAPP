class TwilioService
    def initialize
      @account_sid = 'AC024ae74f58d6020bd5be705bfdc8284f'
      @auth_token = '2f74a19bd0251dc65b0a68ab16126390'
      @from = '+18445780397'
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    end
  
    def send_sms(to, body)
      @client.messages.create(
        from: @from,
        to: to || 5513061974,
        body: body
      )
    end
  end
  