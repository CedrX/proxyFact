require 'facter'

Facter.loadfacts()
networkdomain = Facter.value(:domain)

if networkdomain.end_with?("inist.fr") 
	Facter.add(:global_proxyhost) do 
		setcode do 
			"proxyout.inist.fr" 
		end
	end
	Facter.add(:global_proxyport) do 
		setcode do 
			 "8080" 
		end
	end
end
