require 'test_helper'

class ProductTestHelperTest < ActionView::TestCase

	test "Should report result class" do
    assert result_class('-',0) == 'na'
    assert result_class(nil,0) == 'na'
    assert result_class(1,0) == 'fail'
    assert result_class(1,1) == 'pass'
  end  


  test "Group measures by type" do
  	groups = group_measures_by_type(Measure.all)
    assert_equal 5, groups[:continuous].length,  "Should contain 5 CV measure"
    assert_equal 16, groups[:proportional].length, "Should contain 16 non CV measures"
  end  

end
