class CSVReader

  attr_accessor :fname, :headers

  def initialize(filename)
    @fname = filename
  end

  def headers=(header_str)
    @headers = header_str.split(',')
    @headers.map! do |h|

      # remove quotes
      h.gsub!('"', '')

      # remove new line
      h.strip!

      # convert to a symbol
      h.underscore.to_sym
    end
       def create_hash(values)
         h = {}
          @headers.each_with_index do |header, i|
          end
         h
       end
  end
end

class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end