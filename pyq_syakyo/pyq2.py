import unittest


def fizzbuzz(num):
    if num % 15 == 0:
        return 'FizzBuzz'
    elif num % 3 == 0:
        return 'Fizz'
    elif num % 5 == 0:
        return 'Buzz'
    else:
        return str(num)

class TestBuzzFizz(unittest.TestCase):
    def test_is_fizz(self):
        self.assertEqual('FizzBuzz', fizzbuzz(15))
