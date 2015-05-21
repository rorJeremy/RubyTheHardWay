class CyberSource
  class Signer

    require 'hmac-sha2'
    require 'base64'


    @secret_key = '964550a937974f3c957a656a2109f4a31185127da397487db751f54ffa8411c249930f5120754bed8ca381c7fa703c106f7b9d068df24054b4ba6bc1b984393523277b0fe9254d079c656b6b336cf4a40f92fd0d501f4bf089d816871092e7331db989b1f9334bd1b6ac5e6204b38f30d5d8d34ecb9c46acbc38f904ecab7887'

    def self.get_post_params params
      x = params.join(',')
      generate_signature(x)
    end

    def self.generate_signature params
      sign(build_data_to_sign(params),@secret_key)
    end

    def self.valid? params
      signature = generate_signature params
      signature.strip.eql? params['signature'].strip
    end

    private

    def self.sign data, secret_key
      mac = HMAC::SHA256.new secret_key
      mac.update data
      Base64.encode64(mac.digest).gsub "\n", ''
    end

    def self.build_data_to_sign params

      signed_field_names = params['signed_field_names'].split ','
      data_to_sign = Array.new
      signed_field_names.each { |signed_field_name|
        data_to_sign << signed_field_name + '=' + params[signed_field_name].to_s
      }
      comma_separate data_to_sign
    end

    def self.comma_separate data_to_sign
      csv = ''
      data_to_sign.length.times do |i|
        csv << data_to_sign[i]
        csv << ',' if i != data_to_sign.length-1
      end
      csv
    end
  end
end

signed_field_names_array = ['access_key', 'profile_id', 'transaction_uuid', 'signed_field_names', 'unsigned_field_names', 'signed_date_time', 'locale', 'transaction_type', 'reference_number', 'amount', 'currency', 'payment_method', 'bill_to_email']

puts CyberSource::Signer::get_post_params(signed_field_names_array)

# hash = OpenSSL::HMAC.digest('sha256', "secret", "Message")
# hash_encoded = Base64.encode64(hash)
# puts hash_encoded

# data_message = "Message"
#secret_key = "secret"
#secret_key = CyberSource::CAD[:secret_key]
# x = CyberSource::Signer.new(data_message, CyberSource::CAD[:secret_key])
# puts "Here is the hash: "
# puts x.hash
# puts "Here is the hash_encoded: "
# x.signdata
# puts x.hash_encoded



#CyberSource::Signer::signdata
# puts CyberSource::CardType::translate('001')
# puts CyberSource::ReasonCode::translate('242')


# t = '004'
# my_card = CardTypes.new(t)
# my_card.getCardTypeFromId
# puts my_card.id

# my_error = Errors.new('246')
# my_error.getReasonCode
# puts my_error.reasonCode
