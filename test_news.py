import unittest
from datetime import datetime

def is_valid_date(date_str):
    try:
        datetime.strptime(date_str, '%d.%m.%Y')
        return True
    except ValueError:
        return False

def is_valid_title(title):
    return bool(title.strip())

class TestNewsValidation(unittest.TestCase):
    def test_valid_date(self):
        self.assertTrue(is_valid_date('25.05.2025'))
        self.assertFalse(is_valid_date('2025-05-25'))
        self.assertFalse(is_valid_date('32.13.2025'))
        self.assertFalse(is_valid_date(''))

    def test_valid_title(self):
        self.assertTrue(is_valid_title('New VPS Feature'))
        self.assertFalse(is_valid_title(''))
        self.assertFalse(is_valid_title('   '))

if __name__ == '__main__':
    unittest.main()