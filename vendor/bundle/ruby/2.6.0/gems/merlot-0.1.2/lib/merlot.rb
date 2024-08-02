require "merlot/version"
require 'posix/spawn'
require 'prawn'
  
module Merlot
  class Stamper
    FOOTER_PDF = 'blank_template.pdf'
    # 1. Create a blank template with the <string> stamp on the bottom of the page
    # 2. Call pdftk with the arguments :
    #      <attachment file name> pdf file, 
    #       stamp, 
    #       blank_template.pdf, 
    #       output, 
    #       <output-folder>/<attachment file name>.pdf
    #   This will stamp the given string on every page of the pdf file
  
    def self.stamp(string, file_location, save_location)
      create_footer(string)
      stamp_all_pages(file_location, save_location)
    end       
  
    private
  
    # Create a single page pdf with footer that can be stamped on every page of the pdf file.
    def self.create_footer(string)
      Prawn::Document.generate(FOOTER_PDF, top_margin: 126, right_margin: 72, bottom_margin: 22, left_margin:  72) do 
        bounding_box([0,5], width: bounds.width, height: bounds.height) do
          text string, size: 10, align: :center
        end
      end
    end   
  
    def self.stamp_all_pages(file_location, save_location)
      POSIX::Spawn::Child.new 'pdftk', file_location, 'stamp', FOOTER_PDF, 'output', save_location
    end

  end
end
