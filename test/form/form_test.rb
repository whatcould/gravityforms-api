require './test/test_helper'

class GravityformsFormTest < Minitest::Test
  def test_exists
    assert Gravityforms::Api::Form
  end

  def test_it_returns_a_single_form
    VCR.use_cassette('single_form', record: :all) do
      form = Gravityforms::Api::Form.find(1)
      assert_equal Gravityforms::Api::Form, form.class
    end
  end

  def test_it_returns_a_list_of_forms
    VCR.use_cassette('all_forms', :record => :all) do
      forms = Gravityforms::Api::Form.all
      assert_equal 2, forms.length
      assert forms.kind_of?(Array)
      assert forms.first.kind_of?(Gravityforms::Api::Form)
    end
  end

  def test_it_submits_a_form
    VCR.use_cassette('submit_form', :record => :all) do
      json = '{"input_values":{"input_1":"Hello","input_2_3":"John","input_2_6":"Smith"}}'
      result = Gravityforms::Api::Form.submit(1, json)
    end
  end
end