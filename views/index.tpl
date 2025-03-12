% rebase('layout.tpl', title='VPS Market', year=year)

<div class="jumbotron" style="
    max-width: 70%;  
    margin: 20px auto 0 auto;  
    border-radius: 40px; 
    text-align: center; 
    background: url('static/images/back.png') no-repeat center center; 
    background-size: cover; 
    padding: 50px; 
    color: white;
    border: 8px solid #8A2BE2; 
">
    <img src="static/images/VPS.png" alt="VPS Logo" style="
        max-width: 280px; 
        height: auto; 
        display: block; 
        margin: 0 auto 20px auto; 
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.6);
        border-radius: 25px;
        padding: 10px;
        background: rgba(255, 255, 255, 0.2);
    ">
    <p class="lead" style="
        font-family: 'Comic Sans MS', cursive, sans-serif; 
        font-weight: bold;
        font-size: 22px;
        background: rgba(0, 0, 0, 0.6); 
        display: inline-block; 
        padding: 15px 25px; 
        border-radius: 15px;
        margin-bottom: 20px;
    ">
        Reliable and high-performance VPS servers for your business. Flexibility, security, and maximum productivity.
    </p>
    <p><a <a href="/about">About </a></p>
</div>

<div class="container" style="display: flex; align-items: center; justify-content: space-between;">
    <div class="content" id="contentArea" style="flex: 1;">
        <h2>Select a section</h2>
        <p>Click on one of the buttons on the right to display the information.</p>
    </div>
    <div class="buttons" style="display: flex; gap: 10px; align-items: center; margin-top: 20px;">
        <button onclick="changeContent('about')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">About the product</button>
        <button onclick="changeContent('docs')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Documentation</button>
        <button onclick="changeContent('compatible')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Compatible products</button>
    </div>
</div>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="/" class="navbar-brand">Application name</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/home">Home</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>