module Sisow
  class Configuration

    attr_accessor :merchant_id, :merchant_key, :test_mode, :debug_mode, :shop_id, :base_uri

    def initialize
      @debug_mode   = false
      @test_mode    = false
      @merchant_key = nil
      @merchant_id  = nil
      @shop_id      = nil
    end

    def test_mode_enabled?
      @test_mode == true
    end

    def debug_mode=(boolean)
      @debug_mode = boolean

      if boolean == true
        HTTPI.log = true
        HTTPI.log_level = :debug
      else
        HTTPI.log = false
      end
    end

    def debug_mode_enabled?
      @debug_mode == true
    end

    def merchant_key=(merchant_key)
      @merchant_key = merchant_key.to_s
    end

    def merchant_id=(merchant_id)
      @merchant_id = merchant_id.to_s
    end

  end
end
