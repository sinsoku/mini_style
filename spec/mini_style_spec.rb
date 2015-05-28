require 'spec_helper'

describe MiniStyle do
  let(:dummy_class) { Class.new.include(MiniStyle::Helpers) }
  let(:helper) { dummy_class.new }

  context 'give a default style' do
    subject { helper.style('alert') }
    it { is_expected.to eq 'alert' }
  end

  context 'give dynamic styles' do
    subject { helper.style('alert-danger': true, disabled: false) }
    it { is_expected.to eq 'alert-danger' }
  end

  context 'give a style and dynamic styles' do
    subject { helper.style('alert', 'alert-danger': true, disabled: false) }
    it { is_expected.to eq 'alert-danger alert' }
  end

  context 'no conditions match' do
    subject { helper.style(disabled: false) }
    it { is_expected.to be_nil }
  end
end
