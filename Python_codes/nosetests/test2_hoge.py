from unittest import TestCase
from nose.tools import ok_, eq_
from hoge import sum, is_even

class HogeTestCase(TestCase):
    def setUp(self):
        print('before test')
    def tearDown(self):
        print('after test')

    def test_sum(self):
        assertEqual(t1.txt, t2.txt)

    def test_is_even(self):
        ok_(is_even(2))

