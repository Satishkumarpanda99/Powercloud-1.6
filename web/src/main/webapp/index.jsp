<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 6/22/2015
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        header {
            background: #333;
            color: #fff;
            padding: 1em 0;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        .main {
            padding: 2em;
            background: #fff;
            margin: 1em 0;
        }
        .main h2 {
            border-bottom: 2px solid #333;
            padding-bottom: 0.5em;
        }
        .main p {
            line-height: 1.6em;
        }
        .projects {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
        }
        .project {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 1em;
            flex: 1;
            min-width: calc(33% - 2em);
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 1em 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>My Portfolio</h1>
            <p>Welcome to my personal portfolio website. Explore my work and get to know more about me.</p>
        </div>
    </header>

    <div class="container">
        <section class="main">
            <h2>About Me</h2>
            <p>Hello! I'm [Your Name], a passionate [Your Profession] with experience in [Your Field or Skills]. I enjoy working on [Brief Description of Your Interests or Projects].</p>
        </section>

        <section class="main">
            <h2>Projects</h2>
            <div class="projects">
                <div class="project">
                    <h3>Project 1</h3>
                    <p>A brief description of Project 1. What it is, what technologies were used, and what was achieved.</p>
                </div>
                <div class="project">
                    <h3>Project 2</h3>
                    <p>A brief description of Project 2. What it is, what technologies were used, and what was achieved.</p>
                </div>
                <div class="project">
                    <h3>Project 3</h3>
                    <p>A brief description of Project 3. What it is, what technologies were used, and what was achieved.</p>
                </div>
            </div>
        </section>

        <section class="main">
            <h2>Contact</h2>
            <p>If you'd like to get in touch, feel free to reach out via email at <a href="mailto:your.email@example.com">your.email@example.com</a>.</p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 [Your Name]. All rights reserved.</p>
    </footer>
</body>
</html>
