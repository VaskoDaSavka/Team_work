"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

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