% rebase('layout.tpl', title=title, year=year)

<div class="d-flex align-items-center">
        <h1 class="select_text">Calculate the cost of VPS/VDS for VPN</h1>
        <p class="text">Build a VPS/VDS server configuration for VPN with the right number of processor cores (CPU), RAM (RAM) and the right size of disks - HDD or SSD NVMe.</p><br>
        <p class="text">The selected configuration may not be available in some pools.</p>
</div>
</hr>

<div class="d-flex align-items-center">
        <h1 class="select_text">Configuration</h2>
        <h2 class="price_month">Price in month</h2>
        <div class="grid-container">
            <div class="grid-item">
                <p>1 vCPU</p>
                <p>1 GB RAM</p>
                <p>256 GB SSD</p>
                <div class="price">2500 RUB</div>
            </div>

            <div class="grid-item">
                <p class="text_selection">1 vCPU</p>
                <p>2 GB RAM</p>
                <p>512 GB SSD</p>
                <div class="price">4500 RUB</div>
            </div>
                
            <div class="grid-item">
                <p>2 vCPU</p>
                <p>4 GB RAM</p>
                <p>1 TB HDD</p>
                <div class="price">8000 RUB</div>
            </div>

            <div class="grid-item">
                <p>2 vCPU</p>
                <p>8 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">13000 RUB</div>
            </div>

            <div class="grid-item">
                <p>2 vCPU</p>
                <p>16 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">16000 RUB</div>
            </div>

            <div class="grid-item">
                <p>4 vCPU</p>
                <p>8 GB RAM</p>
                <p>2 TB HDD</p>
                <div class="price">12000 RUB</div>
            </div>

            <div class="grid-item">
                <p>4 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">32500 RUB</div>
            </div>

            <div class="grid-item">
                <p>6 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">39500 RUB</div>
            </div>

            <div class="grid-item">
                <p>8 vCPU</p>
                <p>32 GB RAM</p>
                <p>4 TB HDD</p>
                <div class="price">46000 RUB</div>
            </div>
        </div>
        <form id="networkForm">
            <div class="form-group">
                <h1 class="select_text">Type network:</h2>
                <div class="radio-group">
                    <h2>
                        <input type="radio" name="networkType" value="private" checked 
                               onchange="updatePrice(this)"/>
                        Private network
                        <span class="price">0,00 RUB</span>
                    </h2>
                </div>
                
                <div class="radio-group">
                    <h2>
                        <input type="radio" name="networkType" value="public" 
                               onchange="updatePrice(this)">
                        Public network
                        <span class="price">3100,50 RUB</span>
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

        input[type="radio"]:checked {
            background-color: #8A2BE2; 
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
            color: black;
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