require 'csv'

module Evs
	module Reporters
		class Users
			class Csv

				def self.report users	
					puts 'creating a report'

					file = CSV.open 'users_reports.csv', 'w+'
					file << ['email','fullname','role']

					users.each do |user|
						file << [user.email, user.fullname, user.role]
					end
					file.close

					puts 'Done Creating a report'

					file
				end

				def self.generate users
					puts 'Generating a report'

					file = CSV.generate do |csv|
						csv << ['email','fullname','role']

						users.each do |user|
							csv << [user.email, user.fullname, user.role]
						end
					end

					puts 'Done Creating a report'

					file
					
				end


			end				

		end
		
	end
end
