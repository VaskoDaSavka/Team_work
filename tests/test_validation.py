import re
import pytest
from datetime import datetime

def is_valid_phone(phone: str) -> bool:
    return bool(re.match(r'^\+7\d{3}-\d{3}-\d{2}-\d{2}$', phone))

def is_valid_date(date_str: str) -> bool:
    try:
        day, month, year = map(int, date_str.split('.'))
        datetime(year=year, month=month, day=day)
        return True
    except (ValueError, AttributeError):
        return False

@pytest.mark.parametrize("phone,expected", [
    ("+7123-456-78-90", True),
    ("+7999-999-99-99", True),
    ("+71234567890", False),
    ("8123-456-78-90", False),
    ("+7ABC-DEF-GH-IJ", False),
    ("+7123-456-7890", False),
    ("", False),
])
def test_phone_validation(phone, expected):
    assert is_valid_phone(phone) == expected


@pytest.mark.parametrize("date_str,expected", [
    ("31.12.2023", True),
    ("01.01.2024", True),
    ("29.02.2024", True),
    ("31.02.2023", False),
    ("00.12.2023", False),
    ("32.05.2023", False),
    ("12/12/2023", False),
    ("2023.12.31", False),
    ("not-a-date", False),
    ("", False),
])
def test_date_validation(date_str, expected):
    assert is_valid_date(date_str) == expected


