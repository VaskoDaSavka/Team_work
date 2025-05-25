"""
Routes and views for the bottle application.
"""

from bottle import Bottle, route, view, run, request, template, redirect
import json
import os
import re
from datetime import datetime

def is_valid_date(date_str):
    try:
        day, month, year = map(int, date_str.split('.'))
        datetime(year=year, month=month, day=day) 
        return True
    except (ValueError, AttributeError):
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
def contact():
    """Renders the price page."""
    return dict(
        title='Price',
        message='Your price page.',
        year=datetime.now().year
    )

@route('/docs')
@view('docs')
def contact():
    """Renders the documentation page."""
    return dict(
        title='Price',
        message='Your documentation page.',
        year=datetime.now().year
    )

@route('/api')
@view('api')
def contact():
    """Renders the API page."""
    return dict(
        title='API',
        message='Your API page.',
        year=datetime.now().year
    )

@route('/blog')
@view('blog')
def contact():
    """Renders the blof page."""
    return dict(
        title='Blog',
        message='Your blog page.',
        year=datetime.now().year
    )


@route('/faq')
@view('faq')
def contact():
    """Renders the FAQ page."""
    return dict(
        title='FAQ',
        message='Your FAQ page.',
        year=datetime.now().year
    )

@route('/compatible')
@view('compatible')
def contact():
    """Renders the Compatible page."""
    return dict(
        title='FAQ',
        message='Your Compatible page.',
        year=datetime.now().year
    )
                          
USERS_FILE = "users.json"

def load_users():
    if not os.path.exists(USERS_FILE):
        return []
    with open(USERS_FILE, "r", encoding="utf-8") as f:
        return json.load(f)

def save_users(users):
    with open(USERS_FILE, "w", encoding="utf-8") as f:
        json.dump(users, f, ensure_ascii=False, indent=4)

                            
@route('/users', method=['GET', 'POST'])
@view('users')
@route('/users', method=['GET', 'POST'])
@view('users')
def users_page():
    users = load_users()
    errors = {}
    form_data = {}

    if request.method == 'POST':
  
        form_data = {
            'name': request.forms.get('name', '').strip(),
            'phone': request.forms.get('phone', '').strip(),
            'date': request.forms.get('date', '').strip()
        }

        if not form_data['name']:
            errors['name'] = "Enter username!"
        elif any(user['name'].lower() == form_data['name'].lower() for user in users):
            errors['name'] = "This nickname is already taken!"
        
        if not form_data['phone']:
            errors['phone'] = "Enter your phone!"
        elif not re.match(r'^\+7\d{3}-\d{3}-\d{2}-\d{2}$', form_data['phone']):
            errors['phone'] = "The phone must be in the format +7XXX-XXX-XX-XX!"
        elif any(user['phone'] == form_data['phone'] for user in users):
            errors['phone'] = "This phone is already registered!"
        
        if not form_data['date']:
            errors['date'] = "Enter the date!"
        elif not re.match(r'^\d{2}\.\d{2}\.\d{4}$', form_data['date']):
            errors['date'] = "The date should be in the format DD.MM.YYYY!"
        elif not is_valid_date(form_data['date']):
            errors['date'] = "Incorrect date (e.g. 32.05.2025)!"

        if not errors:
            new_user = {
                "name": form_data['name'],
                "phone": form_data['phone'],
                "date": form_data['date']
            }
            users.append(new_user)
            
            try:
                users.sort(key=lambda x: datetime.strptime(x['date'], "%d.%m.%Y"), reverse=True)
            except ValueError:
                pass  
            
            save_users(users)
            form_data = {'name': '', 'phone': '', 'date': ''}
                   

    return dict(
        users=users,
        errors=errors,
        form_data=form_data,  
        year=datetime.now().year
    )
