require 'spec_helper'

describe Schedule do
  
  context 'basic schedule' do
    before do
      @schedule1 = Factory.create :schedule, :start => DateTime.civil_from_format(:local, 2012, 07, 02, 17), :end => DateTime.civil_from_format(:local, 2012, 07, 02, 22)
      @schedule2 = Factory.create :schedule, :start => DateTime.civil_from_format(:local, 2012, 07, 02, 17)
      @schedule3 = Factory.create :schedule, :start => DateTime.civil_from_format(:local, 2012, 07, 02, 21), :end => DateTime.civil_from_format(:local, 2012, 07, 02, 23)      
    end
  end
  pending "add some examples to (or delete) #{__FILE__}"
end
