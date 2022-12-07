<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>ABC Jobs | <%= request.getParameter("HTMLtitle") !=null ? request.getParameter("HTMLtitle")
          : "Welcome" %>
      </title>
      <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
      <link href="css/zephyr.css" rel="stylesheet">
    </head>

    <body style="min-height: 100vh;">
      <nav class="navbar navbar-expand-lg bg-light mb-4 shadow-sm">
        <div class="container">
          <a class="navbar-brand" href="home">ABC Jobs</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link <%= request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-primary"
                  : "text-black" %>" href="home">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link <%= request.getServletPath().equals("/WEB-INF/views/search.jsp") ? "text-primary"
                  : "text-black" %>" href="search">Search</a>
              </li>
              <% if((Boolean) session.getAttribute("isLogin") != null) { %>
                <li class="nav-item">
                  <a class="nav-link <%= request.getServletPath().equals("/WEB-INF/views/dashboard.jsp")
                    ? "text-primary" : "text-black" %>" href="dashboard">Dashboard</a>
                </li>
                <% } %>
            </ul>
            <% if( (Boolean) session.getAttribute("isLogin") != null) { %>
              <a href="logout" class="btn btn-danger">Logout</a>
              <% } else { %>
                <a href="login" class="btn btn-outline-primary">Login</a>
                <% } %>
          </div>
        </div>
      </nav>