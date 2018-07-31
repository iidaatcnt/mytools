import unittest

def is_leap_year(year):
    # うるう年の判定をしてみましょう
    if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0:
        return True
    else:
        return False

class TestLeapYear(unittest.TestCase):
    def test_is_leap_year_4(self):
        """4の倍数の年のテスト."""
        self.assertTrue(is_leap_year(2020))
        assrtEque = (True, is_leap_year(4))

    def test_is_leap_year_100(self):
        """100の倍数の年のテスト."""
        self.assertFalse(is_leap_year(2100))

    def test_is_leap_year_400(self):
        """400の倍数の年のテスト."""
        self.assertTrue(is_leap_year(2000))

    def test_is_leap_year_2018(self):
        """その他のテスト."""
        self.assertFalse(is_leap_year(2018))

if __name__ == '__main__':
    unittest.main()

