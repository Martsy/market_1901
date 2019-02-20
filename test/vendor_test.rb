require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'

class VendorTest < Minitest::Test
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 30)
  end

  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_it_has_a_name
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_starts_as_empty_hash
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal ({}), vendor.inventory
  end

  def test_that_stock_adds_to_inventory
    @vendor.stock("Tomatoes, 12")
    expected {"Peaches" => 30, "Tomatoes" => 12}
    assert_equal expected, @vendor.inventory
  end

  def test_vendor_can_add_to_stock
    assert_equal 30, @vendor.stock("Peaches")
  end

  def test_vendor_can_check_inventory_stock
    assert_equal 30, @vendor.check_stock("peaches")
end


