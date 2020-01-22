# Treat every _data file as liquid.
# This allows us to include YAML files in other YAML files.
module Jekyll
  # Monkey patch Jekyll::DataReader::read_data_file with our own implementation
  class DataReader
    def read_data_file_with_liquid(path)
      begin
        dir = File.dirname(path)
        filename = File.basename(path)

        # If there are multiple sites assume we're
        # the most recent since we're just starting up
        site = Jekyll.sites.last

        content = File.read(site.in_source_dir(dir, filename))
        template = Liquid::Template.parse(content)

        context = Liquid::Context.new({}, {}, { :site => site })
        rendered = template.render(context)

        # Write the post-liquid-rendered file to a temporary file.
        # read_data_file parses the name of the file to use as its
        # variable name in site.data so it's important to make the
        # temp file name match the original file name.
        Dir.mktmpdir do |tmp_dir|
          tmp_path = File.join(tmp_dir, filename)
          File.write(tmp_path, rendered)
          read_data_file_without_liquid(tmp_path)
        end
      rescue => e
        Jekyll.logger.warn(
          "[SSL-specific] Error parsing data files " +
          "for Liquid content at file #{path}: #{e.message}")
      end
    end

    # Make our function overwrite the existing read_data_file function
    # but keep the ability to still call back to the original
    alias_method :read_data_file_without_liquid, :read_data_file
    alias_method :read_data_file, :read_data_file_with_liquid
  end
end