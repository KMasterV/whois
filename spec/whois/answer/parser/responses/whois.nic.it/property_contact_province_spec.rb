# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.it/property_contact_province_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.it.rb'

describe Whois::Answer::Parser::WhoisNicIt, "property_contact_province.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.it/property_contact_province.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Answer::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "HTML1-ITNIC"
      @parser.registrant_contacts[0].name.should         == "HTML.it srl"
      @parser.registrant_contacts[0].organization.should == "HTML.it srl"
      @parser.registrant_contacts[0].address.should      == "Viale Alessandrino, 595"
      @parser.registrant_contacts[0].city.should         == "Roma"
      @parser.registrant_contacts[0].zip.should          == "00172"
      @parser.registrant_contacts[0].state.should        == "RM"
      @parser.registrant_contacts[0].country_code.should == "IT"
      @parser.registrant_contacts[0].created_on.should   == Time.parse("2007-03-01 10:28:08")
      @parser.registrant_contacts[0].updated_on.should   == Time.parse("2007-03-01 10:28:08")
    end
  end
end