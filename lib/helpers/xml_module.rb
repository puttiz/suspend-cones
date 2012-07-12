module XMLModuleHelper

	def xml_module(item)
		require 'nokogiri'

		output = Nokogiri::XML::Builder.new(:encoding => 'GBK') do |xml|
			# module
			xml.module {
				# item[:module].each do |name,value|
				# 	xml.send(name,value)
				# end

				xml.id item[:module][:id]
				xml.name item[:module][:name]
				xml.file {
					xml.text "#{item[:module][:id]}.php"
				}
				xml.thumbnail "#{item[:module][:thumbnail]}"
				xml.description( "xsi:type" => "xs:string", "xmlns:xs" => "http://www.w3.org/2001/XMLSchema", "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance" ) {
						xml.text "#{item[:module][:description]}"
					}
				xml.requiredCache item[:module][:requiredCache]
				xml.supportedWidth item[:module][:supportedWidth]
				
				# themes
				xml.themes( :default => item[:module][:theme] ) {
					item[:themes].each do |theme|
						xml.theme( :name => theme[:name] ) {
							xml.css "assets/stylesheets/#{theme[:name]}.css"
						}
					end
				}

				# parameters
				xml.parameters {
					# item[:parameters].each do |p|
					# 	#
					# end
				}

			}
		end

		output.to_xml
	end

end