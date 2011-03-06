require "spec_helper"

describe AccordionHelper do
  include ActionView::Helpers,
          ActionView::Helpers::CaptureHelper,
          ActionView::Helpers::JavaScriptHelper,
          AccordionHelper
  
  # allow tabs.create to run by stubbing an output_buffer
  attr_accessor :output_buffer
  @output_buffer = ""
  
  # stub content_for for testing
  def content_for(name, content = nil, &block)
    # this doesn't exist, and causes errors
    @_content_for = {} unless defined? @_content_for
    # we've got to initialize this, so we can concat to it
    @_content_for[name] = '' if @_content_for[name].nil?
    # now the rest is the same as in rails
    content = capture(&block) if block_given?
    @_content_for[name] << content if content
    @_content_for[name] unless content
  end

  it "should be empty, with an empty block" do
    output = ui_accordion do
    end
    output.should == "<div id=\"accordion\"></div>"
  end

  it "should be have one link, with one " do
    output = ui_accordion do |widget|
      widget.panel 'pane_one', 'Pane 1' do
        # empty for now
      end
    end
    output.should == "<div id=\"accordion\"><h3><a href=\"#pane_one\"><span>Pane 1</span></a></h3><div id=\"pane_one\"></div></div>"
  end

  it "should set html options" do
    output = ui_accordion :html => { :id => 'blah', :class => 'foo' } do |widget|
      widget.panel 'pane_one', 'Pane 1', :html => { :class => 'bar' } do
        # empty for now
      end
    end
    output.should == "<div class=\"foo\" id=\"blah\"><h3><a href=\"#pane_one\"><span>Pane 1</span></a></h3><div class=\"bar\" id=\"pane_one\"></div></div>"
  end

  it "should set javascript for the default content identifier" do
    ui_accordion do
    end
    @_content_for[:jquery_ui_helpers].should include "$('#accordion').accordion();"
  end

  it "should set javascript for a custom content identifier" do
    ui_accordion :script_for => :blah do
    end
    @_content_for[:blah].should include "$('#accordion').accordion();"
  end

end