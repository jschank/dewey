require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationHelper do

  context "formatting times" do
    it "drops minutes when lacking minutes" do
      datetime = DateTime.civil(2012, 2, 27, 18, 0)
      helper.time_format(datetime).should eq("%-I %p")
    end

    it "includes time when it has minutes" do
      datetime = DateTime.civil(2012, 2, 27, 18, 30)
      helper.time_format(datetime).should eq("%-I:%M %p")
    end
    

    describe "can properly format times for an occurrence" do

      before(:each) do
        @occurrence = double("Occurrence")
      end

      it "shows two '?' when both start and end is not available" do
        @occurrence.stub(:event_start) {nil}
        @occurrence.stub(:event_end) {nil}
        helper.occurrence_times(@occurrence).should eq("? - ?")
      end

      it "shows '?' when start is not available" do
        @occurrence.stub(:event_start) {DateTime.civil(2012, 02, 27, 9, 0)}
        @occurrence.stub(:event_end) {nil}
        helper.occurrence_times(@occurrence).should eq("9 am - ?")
      end

      it "shows '?' when end is not available" do
        @occurrence.stub(:event_start) {nil}
        @occurrence.stub(:event_end) {DateTime.civil(2012, 02, 27, 17, 0)}
        helper.occurrence_times(@occurrence).should eq("? - 5 pm")
      end

      it "shows times when both start and end is available" do
        @occurrence.stub(:event_start) {DateTime.civil(2012, 02, 27, 9, 0)}
        @occurrence.stub(:event_end) {DateTime.civil(2012, 02, 27, 17, 0)}
        helper.occurrence_times(@occurrence).should eq("9 am - 5 pm")
      end

      it "shows minutes when both start and end is available" do
        @occurrence.stub(:event_start) {DateTime.civil(2012, 02, 27, 9, 30)}
        @occurrence.stub(:event_end) {DateTime.civil(2012, 02, 27, 17, 45)}
        helper.occurrence_times(@occurrence).should eq("9:30 am - 5:45 pm")
      end
    end

    describe "can properly format times for a performance" do

      before(:each) do
        @performance = double("Performance")
      end

      it "shows two '?' when both start and end is not available" do
        @performance.stub(:performance_start) {nil}
        @performance.stub(:performance_end) {nil}
        helper.performance_times(@performance).should eq("? - ?")
      end

      it "shows '?' when start is not available" do
        @performance.stub(:performance_start) {DateTime.civil(2012, 02, 27, 9, 0)}
        @performance.stub(:performance_end) {nil}
        helper.performance_times(@performance).should eq("9 am - ?")
      end

      it "shows '?' when end is not available" do
        @performance.stub(:performance_start) {nil}
        @performance.stub(:performance_end) {DateTime.civil(2012, 02, 27, 17, 0)}
        helper.performance_times(@performance).should eq("? - 5 pm")
      end

      it "shows times when both start and end is available" do
        @performance.stub(:performance_start) {DateTime.civil(2012, 02, 27, 9, 0)}
        @performance.stub(:performance_end) {DateTime.civil(2012, 02, 27, 17, 0)}
        helper.performance_times(@performance).should eq("9 am - 5 pm")
      end

      it "shows minutes when both start and end is available" do
        @performance.stub(:performance_start) {DateTime.civil(2012, 02, 27, 9, 30)}
        @performance.stub(:performance_end) {DateTime.civil(2012, 02, 27, 17, 45)}
        helper.performance_times(@performance).should eq("9:30 am - 5:45 pm")
      end
    end

    describe "can properly format an occurence with a date" do

      before(:each) do
        @date = DateTime.civil(2012, 02, 27)
        @occurrence = double("Occurrence")
        @occurrence.stub(:event_start) {DateTime.civil(2012, 02, 27, 9, 0)}
        @occurrence.stub(:event_end) {DateTime.civil(2012, 02, 27, 17, 0)}
        
      end

      it "shows date when only a date is given" do
        helper.date_and_times(@date).should eq("Monday, February 27, 2012")
      end

      it "shows date and time when only a date and occurrence is given" do
        helper.date_and_times(@date, @occurrence).should eq("Monday, February 27, 2012 at 9 am - 5 pm")
      end
    end
    
  end # context - formatting times

  describe "can properly produce a sortable name" do
      
    it "drops leading 'the' and returns name in caps" do
      helper.sortable_name("the farm").should eq("FARM")
    end

    it "drops leading 'a' and returns name in caps" do
      helper.sortable_name("a lost cause").should eq("LOST CAUSE")
    end

    it "drops leading 'an' and returns name in caps" do
      helper.sortable_name("an ostrich race").should eq("OSTRICH RACE")
    end

    it "drops nothing if there is no leading article and returns name in caps" do
      helper.sortable_name("Big Audio Dynamite").should eq("BIG AUDIO DYNAMITE")
    end

    it "is not confused by an article as part of the first word" do
      helper.sortable_name("Theremin Symphony").should eq("THEREMIN SYMPHONY")
    end
      
  end
  
  describe "can produce a logo path when needed" do
    
    before(:each) do
      @thing = double("some model")
    end
    
    it "returns nothing if the object does not have a logo" do
      @thing.stub(:logo)
      helper.logo_for(@thing, nil).should be_nil
    end

    it "returns asset path of logo without size when size is not given" do
      @thing.stub(:logo) {"my_logo.png"}
      helper.logo_for(@thing, nil).should eq("/assets/my_logo.png")
    end

    it "returns asset path of small logo when size is :small" do
      @thing.stub(:logo) {"my_logo.png"}
      helper.logo_for(@thing, :small).should eq("/assets/my_logo-sm.png")
    end

    it "returns asset path of large logo when size is :large" do
      @thing.stub(:logo) {"my_logo.png"}
      helper.logo_for(@thing, :large).should eq("/assets/my_logo-lg.png")
    end

    it "returns asset path without size when the size is something not known" do
      @thing.stub(:logo) {"my_logo.png"}
      helper.logo_for(@thing, :humongous).should eq("/assets/my_logo.png")
    end
    
  end
    
end
