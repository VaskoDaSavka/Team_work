<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - VPS Server</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />

    <script src="/static/scripts/modernizr-2.6.2.js"></script>
    <style>
        body {
            background: url('static/images/BackForSite.png') no-repeat center center fixed;
            background-size: cover;
        }
        .navbar, footer {
            background-color: #2c3e50 !important; 
            color: white;
            
        }
        footer {
            padding: 10px 0;
            text-align: center;
            text-weight: bold
            ;
        }
    </style>
</head>


    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>

            <p>&copy; {{ year }} -  VPS Server buy!</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>
   
</body>
</html>
