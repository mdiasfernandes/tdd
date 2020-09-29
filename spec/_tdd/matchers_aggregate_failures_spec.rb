describe 'matcher be_within' do
  it 'be_within' do
    aggregate_failures do
      aaaa = 12.5
      expect(aaaa).to be_within(0.5).of(12)
      # expect(aaaa).to be_within(0.6).of(15)
      # expect(aaaa).to be_within(0.7).of(15)
      # expect(aaaa).to be_within(0.8).of(15)
    end
  end
end

#Failures:
#
#  1) matcher be_within be_within
#     Got 3 failures from failure aggregation block.
#    #  ./spec/_tdd/matchers_aggregate_failures_spec.rb:3:in `block (2 levels) in <top (required)>'
#
#     1.1) Failure/Error: expect(aaaa).to be_within(0.6).of(15)
#            expected 12.5 to be within 0.6 of 15
#        #   ./spec/_tdd/matchers_aggregate_failures_spec.rb:6:in `block (3 levels) in <top (required)>'
#
#     1.2) Failure/Error: expect(aaaa).to be_within(0.7).of(15)
#            expected 12.5 to be within 0.7 of 15
#        #   ./spec/_tdd/matchers_aggregate_failures_spec.rb:7:in `block (3 levels) in <top (required)>'
#
#     1.3) Failure/Error: expect(aaaa).to be_within(0.8).of(15)
#            expected 12.5 to be within 0.8 of 15
#        #   ./spec/_tdd/matchers_aggregate_failures_spec.rb:8:in `block (3 levels) in <top (required)>

#  OR ACTIVE FOR ALL TESTS

#  --> spec_helper.rb
#  config.define_derived_metadata do |meta_data|
#    meta_data[:aggregate_failures] = true
#  end