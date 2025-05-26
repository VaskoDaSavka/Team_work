% rebase('layout.tpl', title='FAQ', year=year)

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

<h1>Choose the right solutions for your business challenges</h1>

    <div class="container1" style="max-width: 70%; margin-top: 20px;">
        <div class="card">
            <img src="static/images/1.svg"></img>
            <p><strong>Reserve and save data</strong></p>
        </div>
        <div class="card">
            <img src="static/images/2.svg"></img>
            <p><strong>Organise the network</strong></p>
        </div>
        <div class="card">
            <img src="static/images/3.svg"></img>
            <p><strong>Defend against threats</strong></p>
        </div>
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
        .card {
            margin-top: 20px;
            background-color: white;
            border: 3px solid #8A2BE2;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            cursor: pointer;
            transform: translateY(-5px);
        }
        h1 {
           color: #8A2BE2;
        }
        p, h1, h2, h3 {
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
</style>