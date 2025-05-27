import unittest
from datetime import datetime, timedelta
import re

def is_valid_date(date_str):
    try:
        datetime.strptime(date_str, '%d.%m.%Y')
        return True
    except ValueError:
        return False

def is_date_within_two_weeks(date_str, current_date):
    try:
        news_date = datetime.strptime(date_str, '%d.%m.%Y')
        two_weeks_ago = current_date.replace(hour=0, minute=0, second=0, microsecond=0) - timedelta(weeks=2)
        return news_date.date() >= two_weeks_ago.date()
    except ValueError:
        return False

def is_valid_author_name(author):
    if not author:
        return False
    words = author.split()
    if not words:
        return False
    # Проверяем, что каждое слово начинается с заглавной буквы, остальные буквы могут быть любыми
    for word in words:
        if word and not re.match(r'^[A-Z][a-zA-Z]*$', word):
            return False
    return True

def is_valid_news_title(title):
    if not title:
        return False
    title = title.strip()
    if len(title) < 5:
        return False
    if title.isspace():
        return False
    return bool(re.search(r'[a-zA-Zа-яА-Я]', title))

class TestNewsValidation(unittest.TestCase):
    def setUp(self):
        self.current_date = datetime(2025, 5, 27, 2, 46)  # 02:46 AM EDT, 27 мая 2025 года

    def test_valid_date(self):
        self.assertTrue(is_valid_date('25.05.2025'))
        self.assertFalse(is_valid_date('2025-05-25'))
        self.assertFalse(is_valid_date('32.13.2025'))
        self.assertFalse(is_valid_date(''))
        self.assertFalse(is_valid_date('15.05.2025 '))
        self.assertFalse(is_valid_date('25/05/2025'))

    def test_date_within_two_weeks(self):
        self.assertTrue(is_date_within_two_weeks('27.05.2025', self.current_date))
        self.assertTrue(is_date_within_two_weeks('20.05.2025', self.current_date))
        self.assertTrue(is_date_within_two_weeks('13.05.2025', self.current_date))
        self.assertFalse(is_date_within_two_weeks('12.05.2025', self.current_date))
        self.assertFalse(is_date_within_two_weeks('01.05.2025', self.current_date))
        self.assertFalse(is_date_within_two_weeks('invalid', self.current_date))
        self.assertFalse(is_date_within_two_weeks('', self.current_date))

    def test_valid_author_name(self):
        self.assertTrue(is_valid_author_name('John Doe'))
        self.assertTrue(is_valid_author_name('Anna Smith'))
        self.assertFalse(is_valid_author_name('john Doe'))  # Не начинается с заглавной
        self.assertFalse(is_valid_author_name('John123'))   # Содержит цифры
        self.assertFalse(is_valid_author_name('john'))      # Не начинается с заглавной
        self.assertFalse(is_valid_author_name(''))          # Пустое имя
        self.assertFalse(is_valid_author_name('JOHN doe'))  # Теперь проходит, если это допустимо
        self.assertTrue(is_valid_author_name('John DOE'))   # Корректный смешанный регистр
        self.assertFalse(is_valid_author_name('john DOE'))  # Первое слово с маленькой

    def test_valid_news_title(self):
        self.assertTrue(is_valid_news_title('New VPS Feature'))
        self.assertTrue(is_valid_news_title('Новая Новость'))
        self.assertFalse(is_valid_news_title(''))           # Пустой заголовок
        self.assertFalse(is_valid_news_title('   '))        # Только пробелы
        self.assertFalse(is_valid_news_title('Hi'))         # Меньше 5 символов
        self.assertFalse(is_valid_news_title('.....'))      # Только точки, нет букв
        self.assertFalse(is_valid_news_title('12345'))      # Только цифры
        self.assertFalse(is_valid_news_title('!@#$%'))      # Только символы
        self.assertTrue(is_valid_news_title('Test123'))     # Буквы + цифры
        self.assertFalse(is_valid_news_title('   .   '))    # Пробелы и точки

    def test_edge_cases(self):
        self.assertTrue(is_date_within_two_weeks('13.05.2025', self.current_date))  # Ровно 2 недели назад
        self.assertFalse(is_date_within_two_weeks('12.05.2025', self.current_date)) # День раньше 2 недель
        self.assertTrue(is_valid_author_name('A'))  # Одноимённый автор с заглавной
        self.assertFalse(is_valid_author_name('a')) # Одноимённый автор с маленькой
        self.assertTrue(is_valid_news_title('AbcdE'))  # Минимальная длина с буквами
        self.assertFalse(is_valid_news_title('Abcd'))  # Ровно 4 символа

if __name__ == '__main__':
    unittest.main()