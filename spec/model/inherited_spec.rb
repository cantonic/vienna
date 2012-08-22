describe "Model.inherited" do
  before do
    @cls = Class.new Vienna::Model
  end

  it "should setup the @primary_key variable" do
    @cls.instance_variable_get(:@primary_key).should == :id
  end

  it "should setup the @fields variable" do
    @cls.instance_variable_get(:@fields).should be_kind_of(Hash)
  end
end