class JsonWebToken
  
  attr_reader :algorithm, :secret
  
  def initialize(algorithm = 'HS256')
    @algorithm = algorithm
    @secret = ENV.fetch('DEVISE_JWT_SECRET_KEY')
  end
  
  # def encode(payload)
  #   JWT.encode(payload, secret, algorithm)
  # end
  #
  # def encode_user(user)
  #   encode({
  #            user_email: user.email,
  #            csrf_token: SecureRandom.base64(32),
  #            exp: 1.weeks.from_now.to_i
  #          })
  # end
  
  def decode(token)
    return HashWithIndifferentAccess.new(JWT.decode(token, secret, true, {:algorithm => algorithm})[0])
  end
end