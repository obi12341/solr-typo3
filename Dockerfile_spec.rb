require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    if ENV['IMAGEID']
      image = Docker::Image.get(ENV['IMAGEID'])
    else
      image = Docker::Image.build_from_dir('.')
    end

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  describe port(8080) do
    it "tomcat should be listening" do
      wait_retry 30 do
        should be_listening
      end
    end
  end

  describe command('curl -XGET -I http://localhost:8080/solr/') do
    its(:stdout) { should contain('HTTP/1.1 200 OK') }
  end

  describe command('curl -XGET -I http://localhost:8080/solr/core_de/select/') do
    its(:stdout) { should contain('HTTP/1.1 200 OK') }
  end

  describe command('curl -XGET -I http://localhost:8080/solr/core_en/select/') do
    its(:stdout) { should contain('HTTP/1.1 200 OK') }
  end

end

def wait_retry(time, increment = 1, elapsed_time = 0, &block)
  begin
    yield
  rescue Exception => e
    if elapsed_time >= time
      raise e
    else
      sleep increment
      wait_retry(time, increment, elapsed_time + increment, &block)
    end
  end
end
