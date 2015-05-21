require 'json'
# require 'net/http'
# require 'openssl'


# class SyncJob
#   def self.perform(text)
#     #Get data from EM, save CM
#     data = fetch('http://md5.jsontest.com/?text=' + text)
#     mds = []
#     data.each do |log|
#       mds << log[1] unless mds.include?(log[1])
#     end
#     puts mds
#   end
#
#   #helper method
#   def self.fetch(url)
#     resp = Net::HTTP.get_response(URI.parse(url))
#     data = resp.body
#     JSON.parse(data)
#   end
# end

# class PracticeJob
#   def self.perform
#     #Get data from EM, save CM
#     data = fetch('https://my-webtest1.register-ed.com/api/list_em_registrations/38253?api_key=YT6745986G553c5F9e3c9e43791A5gUYbcc97fc82114a54UDRUH8745&format=json')
#     # puts data
#     mds = []
#     data.each do |log|
#       mds << log['registration_id'] unless mds.include?(log['registration_id'])
#     end
#     puts mds
#   end

#   #helper method
#   def self.fetch(url)
#     resp = Net::HTTP.get_response(URI.parse(url))
#     data = resp.body
#     JSON.parse(data)
#   end
# end

class GetAgencies
  def self.perform
    #Get data from EM, save CM
    data = fetch('http://certification-manager-service.ke.local/agencies.json')
    puts "Hello"
    # puts data
    puts "World"
    names = []
    data.each do |log|
      names << log['name'] unless names.include?(log['name'])
    end
    puts names
  end

  #helper method
  def self.fetch(url)
    resp = Net::HTTP.get_response(URI.parse(url))
    data = resp.body
    JSON.parse(data)
  end
end

# text = "%5Btext"
# SyncJob.perform(text)
# perform(text)

# PracticeJob::perform

GetAgencies::perform
