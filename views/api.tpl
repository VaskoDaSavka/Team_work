% rebase('layout.tpl', title=title, year=year)

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
            <a class="text_section active" href="/api" class="active">API</a>
            <a class="text_section" href="/blog">Blog</a>
        </nav>
        <div class="content">
            <p>We've gathered all the most important documents and materials to make it easier for you to get started with virtual servers.</p>
            <h2>Cloud Management API</h2>
            <p>To manage cloud platform resources</p>
            <h2>Custom Resources API</h2>
            <p>To manage platform resources within projects</p>
            <h2>Work with Terraform</h2>
            <p>Utility for cloud infrastructure management</p>
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