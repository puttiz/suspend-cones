module XMLSiteHelper

  def xml_site(item)
    require 'nokogiri'

    output = Nokogiri::XML::Builder.new(:encoding => 'GBK') do |xml|
      # site
      xml.site {
        item[:site].each do |name,value|
          xml.send(name,value)
        end
        
        # author
        xml.author(
          :wangwang => item[:author][:wangwang],
          :url      => item[:author][:url],
          :name     => item[:author][:name]
        ) {
          xml.text ""
        }

        # global
        xml.global {
          item[:global].each do |n,v|
            xml.send(n,v)
          end
        }

        # themes
        item[:themes] and xml.themes(:default => item[:default_themes]) {
          item[:themes].each do |theme|
            xml.theme(:name => theme[:name]) {
              xml.css theme[:css]
            }
          end
        }

        # pages
        item[:pages] and xml.pages {
          item[:pages].each do |p|
            xml.page(:type => p[:type]) {
              xml.name      p[:name]
              xml.file      p[:file]
              xml.thumbnail p[:thumbnail]
              xml.description(
                "xsi:type"  => "xs:string",
                "xmlns:xs"  => "http://www.w3.org/2001/XMLSchema",
                "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance"
              ) {
                xml.text "#{p[:description]}"
              }
            }
          end
        }

      }
    end

    # item[:author][:site_url]
    # item[:themes][0][:name]

    # def gbk
    #   dup.encode!("utf-8", "gbk")
    # end

    output.to_xml
  end

end
