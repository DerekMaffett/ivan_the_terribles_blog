# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rails' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end


guard :bundler do
  watch('Gemfile')
  # Uncomment next line if your Gemfile contains the `gemspec' command.
  # watch(/^.+\.gemspec/)
end
