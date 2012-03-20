# encoding: utf-8
require 'test/unit'
require "iso_countries"

class IsoCountriesTest < Test::Unit::TestCase
  def test_get_country
    assert_equal("Spain", ISO::Countries.get_country("es"))
    assert_equal("New Zealand", ISO::Countries.get_country("nz"))
    assert_equal("es", ISO::Countries.set_language("es"))
    assert_equal("España", ISO::Countries.get_country("es"))
  end

  def test_get_code
    assert_equal("nz", ISO::Countries.get_code("New zealand"))
    assert_equal("nz", ISO::Countries.get_code("New Zealand"))
    assert_equal("nz", ISO::Countries.get_code("new zealand"))
  end
end
