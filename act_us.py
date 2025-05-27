from bottle import route, post, request, template, redirect
from datetime import datetime
import json
import os
import re

# Path to the users data file
USERS_FILE = 'static/users.json'

# Initialize users.json if it doesn't exist
if not os.path.exists(USERS_FILE):
    with open(USERS_FILE, 'w', encoding='utf-8') as f:
        json.dump([], f)

def load_users():
    """Load the list of users from the file."""
    with open(USERS_FILE, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_users(users):
    """Save the list of users to the file."""
    with open(USERS_FILE, 'w', encoding='utf-8') as f:
        json.dump(users, f, ensure_ascii=False, indent=4)

@route('/active_us')
def active_users():
    """Render the active users page."""
    users = load_users()
    users.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)
    return template('active_us', users=users, errors={}, form_data={}, year=datetime.now().year)

@post('/active_us')
def add_user():
    from bottle import HTTPResponse

    author = request.forms.get('author', '').strip()
    description = request.forms.get('description', '').strip()
    date = request.forms.get('date', '').strip()
    phone = request.forms.get('phone', '').strip()
    replace = request.forms.get('replace') == '1'

    errors = {}
    form_data = {'author': author, 'description': description, 'date': date, 'phone': phone}

    # Validation
    if not author:
        errors['author'] = 'Author name is required.'
    elif len(author) > 50:
        errors['author'] = 'Author name must not exceed 50 characters.'

    if not description:
        errors['description'] = 'Description is required.'
    elif len(description) > 500:
        errors['description'] = 'Description must not exceed 500 characters.'

    if not date:
        errors['date'] = 'Date is required.'
    elif not re.match(r'^\d{2}\.\d{2}\.\d{4}$', date):
        errors['date'] = 'Date must be in DD.MM.YYYY format.'
    else:
        try:
            datetime.strptime(date, '%d.%m.%Y')
        except ValueError:
            errors['date'] = 'Invalid date.'

    if not phone:
        errors['phone'] = 'Phone number is required.'
    elif not re.match(r'^\+7\(\d{3}\)\d{3}-\d{2}-\d{2}$', phone):
        errors['phone'] = 'Phone must be in +7(XXX)XXX-XX-XX format.'

    users = load_users()
    duplicate = next((u for u in users if u['author'].lower() == author.lower() or u['phone'] == phone), None)

    if duplicate and not replace:
        errors['duplicate'] = 'This user is already registered. Replace existing data? <label><input type="checkbox" name="replace" value="1"> Replace</label>'

    if errors:
        users.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)
        return template('active_us', users=users, errors=errors, form_data=form_data, year=datetime.now().year)

    if duplicate and replace:
        users = [u for u in users if not (u['author'].lower() == author.lower() or u['phone'] == phone)]

    users.append({'author': author, 'description': description, 'date': date, 'phone': phone})
    users.sort(key=lambda x: datetime.strptime(x['date'], '%d.%m.%Y'), reverse=True)
    save_users(users)

    return HTTPResponse(status=303, Location='/active_us')
