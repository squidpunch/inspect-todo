describe 'Todo' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a Todo entity' do
    Todo.entity_description.name.should == 'Todo'
  end
end
