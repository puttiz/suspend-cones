module XMLModuleHelper

	def xml_module(item)
		require 'nokogiri'

		output = Nokogiri::XML::Builder.new(:encoding => 'GBK') do |xml|
			# module
			xml.module {
				item[:module].each do |name,value|
					xml.send(name,value)
				end

				xml.description( "xsi:type" => "xs:string", "xmlns:xs" => "http://www.w3.org/2001/XMLSchema", "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance" ) {
						xml.text "#{item[:description]}"
					}

				xml.file {
					xml.text "#{item[:module][:id]}.php"
				}

				# themes
				xml.themes( :default => item[:default_themes] ) {
					item[:themes].each do |theme|
						xml.theme( :name => theme[:name] ) {
							xml.css theme[:css]
						}
					end
				}

			}
		end

		output.to_xml
	end

end