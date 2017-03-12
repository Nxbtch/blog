require 'base64'
require 'openssl'
require 'digest'

class Upyun

  def self.form_policy
    save_key =  '{filename}_{random32}{.suffix}'
    options = {
        bucket: Settings.upyun_bucket,
        'save-key' => '/hello',
        'expiration' => Time.now.to_i + 600
    }

    Base64.strict_encode64(options.to_json)
  end

  def self.form_signature
    policy = form_policy
    password = Digest::MD5.hexdigest(Rails.application.secrets.upyun_password)
    method = 'POST'
    uri = "/#{Settings.upyun_bucket}"
    sha1 = OpenSSL::Digest::SHA1.new
    sha1 << "#{method}&#{uri}&#{policy}"
    sha1 << password
    logger.debug "method: #{method}, uri: #{uri}, policy: #{policy}, decode_policy: #{Base64.strict_decode64(policy)}"
    {policy: policy, signature: Base64.strict_encode64(sha1.digest)}
  end

  def self.form
    sign = form_signature
    {
        policy: sign[:policy],
        authorization: "UPYUN #{Rails.application.secrets.upyun_operator}:#{sign[:signature]}"
    }
  end

  def self.logger
    Rails.logger
  end
end