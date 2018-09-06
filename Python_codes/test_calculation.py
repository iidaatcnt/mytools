import unittest

import calculation

class CalTest(unittest.TestCase):
    def add_num_and_double(self, x, y):
        cal = calculation.Cal()
        self.assertEqual(cal.add_num_and_double(1,1), 4)

if __name__ == '__main__':
    unittest.main()

# C:\Users\iidam\PycharmProjects\ForMaintainer\Python_codes>python test_calculation.py
#
# ----------------------------------------------------------------------
# Ran 0 tests in 0.000s
#
# OK

