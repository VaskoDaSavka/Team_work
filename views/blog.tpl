% rebase('layout.tpl', title=title, year=year)

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

<div class="block_info" style="display: flex; align-items: center; justify-content: space-between;">
    <div class="content_select" id="contentArea" style="flex: 1;">
        <h1>Select a section</h2>
        <p>Click on one of the buttons on the right to display the information.</p>
    </div>
    <div class="buttons" style="display: flex; gap: 10px; align-items: center; margin-top: 20px;">
        <a href="/price" onclick="changeContent('price')" style="background: transparent; border: 2px solid #8A2BE2; font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px;padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Price</a>
        <a href="/docs" onclick="changeContent('docs')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Documentation</a>
        <a href="/faq" onclick="changeContent('faq')" style="background: transparent; border: 2px solid #8A2BE2; font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px;padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">FAQ</a>
        <a href="/compatible" onclick="changeContent('compatible')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Compatible products</a>
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

<div class="api_block">
        <nav class="sidebar">
            <a class="text_section" href="/docs">Documentation</a>
            <a class="text_section" href="/api">API</a>
            <a class="text_section active" href="/blog">Blog</a>
        </nav>
        <div class="content">
            <p class="text">We've gathered all the most important documents and materials to make it easier for you to get started with virtual servers.</p >
            <a class="config_link" ="https://selectel.ru/blog/tutorials/how-to-set-up-vpn-ipsec/">How to configure IPsec VPN</a>
        </div>
</div>

<style>
        .api_block {
            display: flex;
            margin-top: 20px;
        }
        .sidebar {
            width: 200px;
            border-right: 2px solid #8A2BE2;
            padding-right: 20px;
        }
        .sidebar a {
            display: block;
            color: black;
            text-decoration: none;
            margin: 10px 0;
        }
        .sidebar a.active {
            color: #8A2BE2;
            font-weight: bold;
        }
        .content {
            flex-grow: 1;
            padding-left: 20px;
        }
        .config_link {
            color: #8A2BE2;
            font-size: 24px;
        }
        .config_link:hover {
            cursor: pointer;
        }
        .text_section {
            font-size: 20px;
        }
        .text {
            font-size: 32px;
        }
        .select_text {
            color: #8A2BE2;
        }
        p {
            font-size: 20px;
        }
        p, h1, h2, h3 {
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
</style>
