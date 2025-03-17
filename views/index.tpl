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
    border: 8px solid #8A2BE2; ">
    <img src="static/images/VPS.png" alt="VPS Logo" style="
        max-width: 280px; 
        height: auto; 
        display: block; 
        margin: 0 auto 20px auto; 
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.6);
        border-radius: 0;
        padding: 10px;
        background: none;">
    <p class="lead" style="
        font-family: 'Comic Sans MS', cursive, sans-serif; 
        font-weight: bold;
        font-size: 22px;
        background: rgba(0, 0, 0, 0.6); 
        display: inline-block; 
        padding: 15px 25px; 
        border-radius: 15px;
        margin-bottom: 20px;">
        Reliable and high-performance VPS servers for your business. Flexibility, security, and maximum productivity.
    </p>
</div>

<div class="container" style="display: flex; align-items: center; justify-content: space-between; margin-top: 20px;">
    <div class="buttons" style="display: flex; gap: 10px;">
        <button onclick="changeContent('price')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Price</button>
        <button onclick="changeContent('about')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">About the product</button>
        <button onclick="changeContent('docs')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Documentation</button>
        <button onclick="changeContent('compatible')" style="background: transparent; border: 2px solid #8A2BE2; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Compatible products</button>
    </div>
</div>

<div id="dynamicContent"></div>

<script>
    function changeContent(section) {
        let content = {
            price: `<div class='row' style='display: flex; align-items: center; margin-top: 30px;'>
                        <img src='static/images/price.png' class='img-fluid' alt='Purchase VPS' style='border-radius: 50%; background: white; padding: 10px; max-width: 150px; margin-right: 20px;'>
                        <div style='font-family: Comic Sans MS, cursive, sans-serif; font-weight: bold;'>
                            <h2>Price</h2>
                            <p>In this item you can find out the prices for servers</p>
                            <p><a href='/price' class='btn btn-default' target='_blank'>Learn more &raquo;</a></p>
                        </div>
                    </div>`,
            about: `<div class='row' style='display: flex; align-items: center; margin-top: 30px;'>
                        <img src='static/images/vps1.png' class='img-fluid' alt='Purchase VPS' style='border-radius: 50%; background: white; padding: 10px; max-width: 150px; margin-right: 20px;'>
                        <div style='font-family: Comic Sans MS, cursive, sans-serif; font-weight: bold;'>
                            <h2>About</h2>
                            <p>Our VPS servers offer scalable solutions to suit your business needs, with a variety of configuration options and competitive pricing.</p>
                            <p><a href='/about' class='btn btn-default' target='_blank'>Learn more &raquo;</a></p>
                        </div>
                    </div>`,
            docs: `<div class='row' style='display: flex; align-items: center; margin-top: 30px;'>
                        <img src='static/images/vps2.png' class='img-fluid' alt='VPS Documentation' style='border-radius: 50%; background: white; padding: 10px; max-width: 150px; margin-right: 20px;'>
                        <div style='font-family: Comic Sans MS, cursive, sans-serif; font-weight: bold;'>
                            <h2>Documentation</h2>
                            <p>Find comprehensive guides and resources to help you get started with our VPS services and manage your servers efficiently.</p>
                            <p><a class='btn btn-default' href='/docs'>Learn more &raquo;</a></p>
                        </div>
                    </div>`,
            compatible: `<div class='row' style='display: flex; align-items: center; margin-top: 30px;'>
                            <img src='static/images/vps3.png' class='img-fluid' alt='VPS Compatibility' style='border-radius: 50%; background: white; padding: 10px; max-width: 150px; margin-right: 20px;'>
                            <div style='font-family: Comic Sans MS, cursive, sans-serif; font-weight: bold;'>
                                <h2>Compatibility</h2>
                                <p>Our VPS servers are fully compatible with a wide range of software and technologies, ensuring smooth performance and ease of integration.</p>
                                <p><a class='btn btn-default' href='/compatible'>Learn more &raquo;</a></p>
                            </div>
                        </div>`
        };
        document.getElementById("dynamicContent").innerHTML = content[section];
    }
</script>
<div class="faq-section" style="margin-top: 40px;">
 <div class="faq-section" style="margin-top: 40px; border: 3px solid #00BFFF; padding: 20px;">
    <h2 style="font-family: 'Comic Sans MS', cursive, sans-serif; text-align: center; color: black; border-bottom: 2px solid #00BFFF; padding-bottom: 10px;">
        Frequently Asked Questions
    </h2>
    <div class="faq-container" style="display: flex; flex-direction: column; align-items: center;">
        
        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                What is a VPS server?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                A VPS (Virtual Private Server) is a virtual server that provides users with dedicated resources on a physical server.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                What is the difference between VPS and VDS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                VPS and VDS are essentially the same. The difference lies only in terminology: VPS is more commonly used in English-speaking countries, while VDS is used in Russian-speaking regions.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                How secure is a VPS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                VPS servers provide higher security than shared hosting as resources are isolated from other users.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                Can I install custom software on my VPS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                Yes, you have full root access to install any software that meets the server's technical requirements.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                How do I manage my VPS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                You can manage your VPS through SSH, a control panel, or a web-based management interface.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                What operating systems are available for VPS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                Most providers offer Linux distributions (Ubuntu, CentOS, Debian) and Windows Server.
            </div>
        </div>

        <div class="faq-item" style="width: 80%; margin-bottom: 10px;">
            <button class="faq-question" onclick="toggleAnswer(this)" style="
                width: 100%; text-align: center; padding: 15px; font-family: 'Comic Sans MS', cursive, sans-serif; font-weight: bold; font-size: 18px; border: none; background: transparent; cursor: pointer; color: black;">
                What is the uptime guarantee for VPS?
            </button>
            <div class="faq-answer" style="display: none; padding: 10px; font-size: 16px; background: #ffffff; border-left: 4px solid #8A2BE2;">
                Most VPS providers offer 99.9% uptime guarantees.
            </div>
        </div>

    </div>
</div>
<script>
    function toggleAnswer(button) {
        let answer = button.nextElementSibling;
        if (answer.style.display === "none" || answer.style.display === "") {
            answer.style.display = "block";
        } else {
            answer.style.display = "none";
        }
    }
</script>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="/" class="navbar-brand" style="color: pink;">Application name</a>
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
