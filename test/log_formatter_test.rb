require 'minitest/autorun'
require_relative '../script/log_formatter.rb'

class LogFormatterTest < Minitest::Test
    def test_format_log
        text = LogFormatter.format_log
        lines = text.lines(chomp: true)
        assert_equal '[OK] require_id=1, path=/products/1', lines[0]
        assert_equal '[NG] require_id=2, path=/wp-login.php, status=404, error=Not found', lines[1]
        assert_equal '[WARN] require_id=3, path=/products, duration=1023.8', lines[2]
        assert_equal '[NG] require_id=4, path=/dangerous, status=500, error=Internal server error', lines[3]
        puts lines
    end
end