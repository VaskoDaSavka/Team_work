% rebase('layout.tpl', title='FAQ', year=year)

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
    <div class="content_docs" id="contentArea" style="flex: 1;">
        <h1 class="select_text">Select a section</h2>
        <p class="text_section">Click on one of the buttons on the right to display the information.</p>
    </div>
    <div class="buttons" style="display: flex; gap: 10px; align-items: center; margin-top: 20px;">
        <a href="/price" onclick="changeContent('price')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Price</a>
        <a href="/docs" onclick="changeContent('docs')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Documentation</a>
        <a href="/faq" onclick="changeContent('faq')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">FAQ</a>
        <a href="/compatible" onclick="changeContent('compatible')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Compatible products</a>
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

<div class="faq-section" style="max-width: 70%; margin-top: 20px;">
    <h1>What is VPN?</h1>
    <p>With this technology, you can create a secure user connection to the network.</p>

    <h1>Do you help set up a VPN?</h1>
    <p>No, we do not offer this service. However, our technicians will answer questions and assist with the installation process.</p>

    <h1>How to create a virtual server?</h1>
    <p>To start a virtual server, you need to create an account in the control panel.</p>

    <h1>What operating systems are available?</h1>
    <p>You can choose ready-to-use images of Ubuntu, Debian, CentOS, Fedora, and others.</p>
</div>
<style>
        .docs_block {
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
        .content h2 {
            color: #8A2BE2;
        }
        .content p {
            color: #666;
        }
        .text_section {
            font-size: 20px;
        }
        .text {
            font-size: 20px;
        }
        .select_text {
            color: #8A2BE2;
        }
        p {
            font-size: 20px;
        }
        .faq-section h1 {
            color: #8A2BE2;
            margin-top: 20px;
        }

        .faq-section p {
            font-size: 18px;
            color: #333;
        }
        p, h1, h2, h3 {
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
</style>