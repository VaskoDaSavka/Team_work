"""
Routes and views for the bottle application.
"""
from bottle import route, view, request
from datetime import datetime
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

@route('/news', method=['GET', 'POST'])
@view('news')
def news():
    """Renders the news page and handles news submission."""
    errors = []
    form_data = {'title': '', 'author': '', 'description': '', 'date': ''}
    success_message = ''

    # Load news items
    with open(NEWS_FILE, 'r', encoding='utf-8') as f:
        news_items = json.load(f)

    if request.method == 'POST':
        form_data['title'] = request.forms.get('title', '').strip()
        form_data['author'] = request.forms.get('author', '').strip()
        form_data['description'] = request.forms.get('description', '').strip()
        form_data['date'] = request.forms.get('date', '').strip()

        # Validation
        if not form_data['title']:
            errors.append('News title is required.')
        if not form_data['author']:
            errors.append('Author is required.')
        if not form_data['description']:
            errors.append('Description is required.')
        if not form_data['date']:
            errors.append('Date is required.')
        elif not is_valid_date(form_data['date']):
            errors.append('Date must be in DD.MM.YYYY format (e.g., 25.05.2025).')

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