require 'spec_helper'

describe "Hounds" do

  def mock_hound(stubs={})
    @mock_hound ||= mock_model(Hound, stubs).as_null_object
  end
  
  def dan_json
    '{"hound":{"name":"Dan","age":3}}'
  end

  def dan_xml
    <<-XML
<?xml version="1.0" encoding="UTF-8"?> 
<hound> 
  <name>Dan</name> 
  <age type="integer">3</age> 
</hound> 
    XML
  end

  def xml_headers
    {
      'HTTP_ACCEPT' => 'application/xml',
      'CONTENT_TYPE' => 'application/xml'  
    }  
  end

  def json_headers
    {
      'HTTP_ACCEPT' => 'application/json',
      'CONTENT_TYPE' => 'application/json'  
    }  
  end

  describe "GET /hounds" do
    it "works! (now write some real specs)" do
      visit hounds_path
      response.status.should be(200)
    end
  end

  describe "GET show" do
    it "assigns the requested hound as @hound" do
      Hound.stub(:find).with("37") { mock_hound }
      visit hounds_path(37)
#      response.status.should be(201)
    end
  end

  describe "POST /hounds.xml" do 
    it "should successfully post XML" do  
      @headers ||= {}  
      post hounds_path(:xml), dan_xml, xml_headers  
      # use standard assert on response object  
      response.status.should be(201)
    end

    it "assigns a newly created hound as @hound" do
      Hound.stub(:new).with({ 'name' => 'Dan', 'age' => 3 }) { mock_hound(:save => true) }
      post hounds_path(:xml), dan_xml, xml_headers
      assigns(:hound).should be(mock_hound)
    end
  end  

  describe "POST /hounds.json" do 
    it "should successfully post XML" do  
      @headers ||= {}  
      post hounds_path(:json), dan_json, json_headers  
      # use standard assert on response object  
      response.status.should be(201)
    end

    it "assigns a newly created hound as @hound" do
      Hound.stub(:new).with({ 'name' => 'Dan', 'age' => 3 }) { mock_hound(:save => true) }
      post hounds_path(:json), dan_json, json_headers
      assigns(:hound).should be(mock_hound)
    end
  end  

end  
