class EmailClient
  attr_reader :message_class

  def initialize(message_class = Message)
    @message_class = message_class
  end

  def message
    message_class.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHelloToMyLittleFriend
  attr_reader :email 

  def initialize(email = EmailClient.new)
    @email = email 
  end

  def run
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end