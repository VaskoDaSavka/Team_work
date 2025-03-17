% rebase('layout.tpl', title='VPS Market', year=year)

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

<div class="docs_block">
        <nav class="sidebar">
            <a class="text_section active" href="/docs">Documentation</a>
            <a class="text_section" href="/api">API</a>
            <a class="text_section" href="/blog">Blog</a>
        </nav>
        <div class="content">
            <p class="text_section">We've gathered all the most important documents and materials to make it easier for you to get started with virtual servers.</p>
            <h2>Cloud servers</h2>
            <p class="text_section">Detailed description of virtual servers and their tasks</p>
            <h2>Cloud server configurations</h2>
            <p class="text_section">Which VPS/VDS server configurations can be rented</p>
            <h2>Cloud servers 152-FZ</h2>
            <p class="text_section">What we are responsible for and how much clouds cost for 152-FZ</p>
            <h2>Regions and zones</h2>
            <p class="text_section">Where are the data centres where you can deploy a VDS server?</p>
            <h2>Projects</h2>
            <p class="text_section">How to create, move or delete a cloud platform project</p>
            <h2>Payment and billing</h2>
            <p class="text_section">Description of external and internal traffic tariffs and payment methods</p>
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
        p, h1, h2, h3 {
            font-family: 'Comic Sans MS', cursive, sans-serif;
        }
</style>