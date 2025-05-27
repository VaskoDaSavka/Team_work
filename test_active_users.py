import unittest
import re
from datetime import datetime

def is_valid_date(date_str):
    """Validate date in DD.MM.YYYY format."""
    if not date_str:
        return False, "Date is required."
    
    date_pattern = r'^\d{2}\.\d{2}\.\d{4}$'
    if not re.match(date_pattern, date_str):
        return False, "Date must be in DD.MM.YYYY format."
    
    try:
        day, month, year = map(int, date_str.split('.'))
        date_obj = datetime(year, month, day)
        if date_obj.day != day or date_obj.month != month or date_obj.year != year:
            return False, "Invalid date."
        return True, ""
    except ValueError:
        return False, "Invalid date."

def is_valid_phone(phone_str):
    """Validate phone number in +7(XXX)XXX-XX-XX format."""
    if not phone_str:
        return False, "Phone number is required."
    
    phone_pattern = r'^\+7\(\d{3}\)\d{3}-\d{2}-\d{2}$'
    if not re.match(phone_pattern, phone_str):
        return False, "Phone must be in +7(XXX)XXX-XX-XX format."
    
    return True, ""

class Test_test_act_users(unittest.TestCase):
    def test_valid_date(self):
        # Test valid date
        is_valid, message = is_valid_date("15.05.2025")
        self.assertTrue(is_valid, f"Expected valid date, but got: {message}")
        self.assertEqual(message, "")
        
        # Test invalid date format
        is_valid, message = is_valid_date("2025-05-15")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Date must be in DD.MM.YYYY format.")
        
        # Test invalid date (non-existent)
        is_valid, message = is_valid_date("31.04.2025")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Invalid date.")
        
        # Test empty date
        is_valid, message = is_valid_date("")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Date is required.")

    def test_valid_phone(self):
        # Test valid phone number
        is_valid, message = is_valid_phone("+7(123)456-78-90")
        self.assertTrue(is_valid, f"Expected valid phone, but got: {message}")
        self.assertEqual(message, "")
        
        # Test invalid phone format
        is_valid, message = is_valid_phone("123-456-7890")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Phone must be in +7(XXX)XXX-XX-XX format.")
        
        # Test empty phone
        is_valid, message = is_valid_phone("")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Phone number is required.")
        
        # Test incorrect phone pattern
        is_valid, message = is_valid_phone("+7(123)456-789")
        self.assertFalse(is_valid)
        self.assertEqual(message, "Phone must be in +7(XXX)XXX-XX-XX format.")


if __name__ == '__main__':
    unittest.main()
