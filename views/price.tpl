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
    <div class="content" id="contentArea" style="flex: 1;">
        <h1 class="select_text">Select a section</h1>
        <p class="text_section">Click on one of the buttons on the right to display the information.</p>
    </div>
    </hr>
    <div class="buttons" style="display: flex; gap: 10px; align-items: center; margin-top: 20px;">
         <a href="/price" onclick="changeContent('price')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Price</a>
        <a href="/docs" onclick="changeContent('docs')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Documentation</a>
        <a href="/faq" onclick="changeContent('faq')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">FAQ</a>
        <a href="/compatible" onclick="changeContent('compatible')" style="background: transparent; border: 2px solid #8A2BE2;font-family: 'Comic Sans MS', cursive, sans-serif;font-size:20px; padding: 10px 15px; border-radius: 5px; cursor: pointer; color: #8A2BE2;">Compatible products</a>   
    </div>
</div>

<div class="d-flex align-items-center">
        <h1 class="select_text">Calculate the cost of VPS/VDS for VPN</h1>
        <p class="text">Build a VPS/VDS server configuration for VPN with the right number of processor cores (CPU), RAM (RAM) and the right size of disks - HDD or SSD NVMe.</p><br>
        <p class="text">The selected configuration may not be available in some pools.</p>
</div>
</hr>

<div class="d-flex align-items-center">
        <h1 class="select_text">Configuration</h2>
        <div class="grid-container">
            <div class="grid-item">
                <p>1 vCPU</p>
                <p>1 GB RAM</p>
                <p>256 GB SSD</p>
                <div class="price">1,22 RUB</div>
            </div>

            <div class="grid-item">
                <p class="text_selection">1 vCPU</p>
                <p>2 GB RAM</p>
                <p>512 GB SSD</p>
                <div class="price">1,55 RUB</div>
            </div>
                
            <div class="grid-item">
                <p>2 vCPU</p>
                <p>4 GB RAM</p>
                <p>1 TB HDD</p>
                <div class="price">3,10 RUB</div>
            </div>

            <div class="grid-item">
                <p>2 vCPU</p>
                <p>8 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">4,41 RUB</div>
            </div>

            <div class="grid-item">
                <p>2 vCPU</p>
                <p>16 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">7,02 RUB</div>
            </div>

            <div class="grid-item">
                <p>4 vCPU</p>
                <p>8 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">6,20 RUB</div>
            </div>

            <div class="grid-item">
                <p>4 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">14,04 RUB</div>
            </div>

            <div class="grid-item">
                <p>6 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">15,83 RUB</div>
            </div>

            <div class="grid-item">
                <p>8 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">17,63 RUB</div>
            </div>
        </div>
        <form id="networkForm">
            <div class="form-group">
                <h1 class="select_text">Type network:</h2>
                <div class="radio-group">
                    <h2>
                        <input type="radio" name="networkType" value="private" checked 
                               onchange="updatePrice(this)">
                        Private network
                        <span class="price">0,00 RUB</span>
                    </h2>>
                </div>
                
                <div class="radio-group">
                    <h2>
                        <input type="radio" name="networkType" value="public" 
                               onchange="updatePrice(this)">
                        Public network
                        <span class="price">1,07 RUB</span>
                    </h2>
                </div>
            </div>
        </form>
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
<style>
        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            max-width: 800px;
            margin: 20px auto;
        }

        .grid-item {
            background-color: white;
            border: 3px solid #8A2BE2;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }

        .grid-item:hover {
            cursor: pointer;
            transform: translateY(-5px);
        }

        .price {
            font-size: 1.5em;
            color: #2ecc71;
            font-weight: bold;
        }

        .scroll-container {
            display: flex;
            overflow-x: auto;
            padding: 10px;
            margin: 0 -15px; 
        }

        .navbar-nav {
            margin-left: 0;
            padding-left: 0;
        }

        .row_elements {
            display: flex;
            flex-wrap: nowrap;
        }

        .col-md-6.col-lg-4 {
            padding: 0 15px;
            margin-left: 10px;
        }


        .scroll-container::-webkit-scrollbar {
            height: 8px;
        }

        .scroll-container::-webkit-scrollbar-thumb {
            background: rgba(0,0,0,0.2);
            border-radius: 4px;
        }

        .scroll-container::-webkit-scrollbar-track {
            background: rgba(0,0,0,0.05);
        }

        @media (max-width: 768px) {
            .scroll-container {
                padding: 10px 0;
            }
    
            .col-md-6.col-lg-4 {
                flex: 0 0 100%;
                margin-right: 0;
            }
        }

        .radio-group {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .radio-group h3 {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="radio"] {
            appearance: none;
            width: 20px;
            height: 20px;
            border: 2px solid #8A2BE2;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
            position: relative;
            cursor: pointer;
        }

        input[type="radio"]::before {
            content: "";
            width: 10px;
            height: 10px;
            background-color: #8A2BE2;
            border-radius: 50%;
            transform: scale(0);
            transition: transform 0.2s ease-in-out;
        }

        input[type="radio"]:checked::before {
            transform: scale(1);
        }

        .price {
            font-size: 24px;
            font-weight: bold;
            margin-left: 8px;
            color: #444;
        }

        .submit {
            background-color: #092433;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
            box-shadow: 0 4px 6px rgba(0, 123, 255, 0.3);
        }
        .submit:hover {
            background-color: #091000;
        }

        .submit:active {
            transform: scale(0.8);
        }

        .submit:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
        }

        .navbar-nav {
            font-size: 24px;
        }

        .navbar-nav li a {
            color: red;
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
        h1,h2, p {
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
        p {
            font-size: 20px;
        }
</style>