from bottle import route, view, request
from datetime import datetime, timedelta
import json
import os
import re
# Path to the news data file
NEWS_FILE = 'static/news.json'

# Initialize news.json if it doesn't exist
if not os.path.exists(NEWS_FILE):
    with open(NEWS_FILE, 'w', encoding='utf-8') as f:
        json.dump([], f)

# Function to validate date format (DD.MM.YYYY)
def is_valid_date(date_str):
    try:
        datetime.strptime(date_str, '%d.%m.%Y')
        return True
    except ValueError:
        return False

# Function to validate date freshness (not older than 2 weeks from today)
def is_date_within_two_weeks(date_str, current_date):
    try:
        news_date = datetime.strptime(date_str, '%d.%m.%Y')
        two_weeks_ago = current_date - timedelta(weeks=2)
        return news_date >= two_weeks_ago
    except ValueError:
        return False

# Function to validate author name (starts with capital letter, no digits)
def is_valid_author_name(author):
    if not author:
        return False
    # Check if starts with capital letter and contains only letters/spaces
    return bool(re.match(r'^[A-Z][a-zA-Z\s]*$', author))

# Function to validate news title (not empty, at least 5 characters, not just whitespace)
def is_valid_news_title(title):
    if not title:
        return False
    title = title.strip()
    return len(title) >= 5 and title != ''

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/price')
@view('price')
def price():
    """Renders the price page."""
    return dict(
        title='Price',
        message='Your price page.',
        year=datetime.now().year
    )

@route('/docs')
@view('docs')
def docs():
    """Renders the documentation page."""
    return dict(
        title='Documentation',
        message='Your documentation page.',
        year=datetime.now().year
    )

@route('/api')
@view('api')
def api():
    """Renders the API page."""
    return dict(
        title='API',
        message='Your API page.',
        year=datetime.now().year
    )

@route('/blog')
@view('blog')
def blog():
    """Renders the blog page."""
    return dict(
        title='Blog',
        message='Your blog page.',
        year=datetime.now().year
    )

@route('/faq')
@view('faq')
def faq():
    """Renders the FAQ page."""
    return dict(
        title='FAQ',
        message='Your FAQ page.',
        year=datetime.now().year
    )

@route('/compatible')
@view('compatible')
def compatible():
    """Renders the Compatible page."""
    return dict(
        title='Compatible',
        message='Your Compatible page.',
        year=datetime.now().year
    )

@route('/active_us')
@view('active_us')
def compatible():
    """Render the Compatible page."""
    return dict(title='Active_Users', message='Your Active_Users page.', year=datetime.now().year)

@route('/news', method=['GET', 'POST'])
@view('news')
def news():
    """Renders the news page and handles news submission."""
    errors = []
    form_data = {'title': '', 'author': '', 'description': '', 'date': ''}
    success_message = ''
    current_date = datetime(2025, 5, 26)  # Current date as per system (May 26, 2025)

    # Load news items
    with open(NEWS_FILE, 'r', encoding='utf-8') as f:
        news_items = json.load(f)

    if request.method == 'POST':
        form_data['title'] = request.forms.get('title', '').strip()
        form_data['author'] = request.forms.get('author', '').strip()
        form_data['description'] = request.forms.get('description', '').strip()
        form_data['date'] = request.forms.get('date', '').strip()

        # Validation for news title
        if not form_data['title']:
            errors.append('News title is required.')
        elif not is_valid_news_title(form_data['title']):
            errors.append('News title must be at least 5 characters long and cannot be just whitespace.')

        # Validation for author
        if not form_data['author']:
            errors.append('Author is required.')
        elif not is_valid_author_name(form_data['author']):
            errors.append('Author name must start with a capital letter and contain only letters and spaces (no digits).')

        # Validation for description
        if not form_data['description']:
            errors.append('Description is required.')
        elif len(form_data['description'].strip()) < 10:
            errors.append('Description must be at least 10 characters long.')

        # Validation for date
        if not form_data['date']:
            errors.append('Date is required.')
        elif not is_valid_date(form_data['date']):
            errors.append('Date must be in DD.MM.YYYY format (e.g., 25.05.2025).')
        elif not is_date_within_two_weeks(form_data['date'], current_date):
            errors.append('News date cannot be older than 2 weeks from today (May 26, 2025).')

        if not errors:
            # Add new news item
            new_item = {
                'title': form_data['title'],
                'author': form_data['author'],
                'description': form_data['description'],
                'date': form_data['date']
            }
            news_items.append(new_item)
            # Sort by date (newest first)
            news_items.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)
            # Save the entire list
            with open(NEWS_FILE, 'w', encoding='utf-8') as f:
                json.dump(news_items, f, ensure_ascii=False, indent=4)
            success_message = 'News added successfully!'
            form_data = {'title': '', 'author': '', 'description': '', 'date': ''}

    return dict(
        title='Latest News',
        year=datetime.now().year,
        news_items=news_items,
        errors=errors,
        form_data=form_data,
        success_message=success_message
    )

USERS_FILE = 'static/users.json'

# Создание файла, если не существует
if not os.path.exists(USERS_FILE):
    with open(USERS_FILE, 'w', encoding='utf-8') as f:
        json.dump([], f)


@route('/active_us', method='GET')
@view('active_us')
def active_users_form():
    with open(USERS_FILE, 'r', encoding='utf-8') as f:
        users = json.load(f)

    users.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)
    
    return dict(
        title='Active Users',
        users=users,
        errors={},
        form_data={},
        year=datetime.now().year
    )


@route('/active_us', method='POST')
@view('active_us')
def add_user():
    errors = {}
    form_data = {
        'author': request.forms.get('author', '').strip(),
        'description': request.forms.get('description', '').strip(),
        'date': request.forms.get('date', '').strip(),
        'phone': request.forms.get('phone', '').strip()
    }

    # Валидация
    if not form_data['author']:
        errors['author'] = 'Author is required.'
    if not form_data['description']:
        errors['description'] = 'Description is required.'
    if not form_data['date']:
        errors['date'] = 'Date is required.'
    elif not is_valid_date(form_data['date']):
        errors['date'] = 'Date must be in DD.MM.YYYY format.'
    if not form_data['phone']:
        errors['phone'] = 'Phone is required.'
    elif not re.match(r'^\+7\(\d{3}\)\d{3}-\d{2}-\d{2}$', form_data['phone']):
        errors['phone'] = 'Phone must be in +7(XXX)XXX-XX-XX format.'

    # Загрузка существующих пользователей
    with open(USERS_FILE, 'r', encoding='utf-8') as f:
        users = json.load(f)

    # Проверка на дубликат по телефону
    for user in users:
        if user['phone'] == form_data['phone']:
            errors['duplicate'] = 'User with this phone already exists.'
            break

    if not errors:
        users.append(form_data)
        users.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)

        with open(USERS_FILE, 'w', encoding='utf-8') as f:
            json.dump(users, f, ensure_ascii=False, indent=4)

        # Очистка формы
        return dict(
            title='Active Users',
            users=users,
            errors={},
            form_data={},
            year=datetime.now().year
        )

    # Вернуть обратно форму с ошибками
    return dict(
        title='Active Users',
        users=users,
        errors=errors,
        form_data=form_data,
        year=datetime.now().year
    )
