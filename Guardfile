notification :gntp, :sticky => true, :host => '192.168.1.2', :password => 'growlme'

guard 'minitest', :test_folders => 'spec', :test_file_patterns => '*_spec.rb' do
  watch(%r|^spec/(.+)_spec\.rb|)

  watch(%r|^lib/(.*)([^/]+)\.rb|) do |m|
    "spec/#{m[1]}#{m[2]}_spec.rb"
  end

  watch(%r|^spec/spec_helper\.rb|) do
    "spec"
  end
end

if File.exists?('Guardfile.local')
  instance_eval File.read('Guardfile.local')
end