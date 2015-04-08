class Rolodex

	# attr_reader :contacts

	def initialize
		@contacts = []
		@next_contact_id = 1
	end

	def add_contact(contact)
		contact.id = @next_contact_id
		@contacts << contact
		@next_contact_id += 1
	end

	def find(contact_id)
		@contacts.find do |contact|
			contact.id == contact_id
		end
	end

	def delete(contact_id)
		@contacts.delete_if do |contact|
			contact.id == contact_id
		end
	end

	def each_contact
		@contacts.each do |contact|
			yield contact
		end
	end

end