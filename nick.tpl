<!DOCTYPE html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Nicholas Antonov</title>
<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style>
    .pure-g [class *= "pure-u"] {
        font-family: 'Ubuntu', sans-serif;
    }

    h1 {
        font-size: 38px;
        margin-bottom: 0px;
    }

    h3 {
        font-size: 24px;
        margin-bottom: 5px;
        -webkit-margin-before: 0.9em;
    }

    .capitalize:first-letter {
        text-transform:capitalize;
    }

    .col-pri {
        color: <%= theme.colors.pri %>;
    }

    .col-sec {
        color: <%= theme.colors.sec %>;
    }

    .center-text {
      text-align: center;
    }

    ul {
      margin: 0;
      padding-top: 5px;
    }

    footer {
      margin: 1em auto;
      text-align: center;
      align-content: center;
    }
</style>
<div class="pure-g">
    <div class="pure-u-1-24"></div>
    <div class="pure-u-22-24">
        <div><h1><%= name.first %><span  class="col-pri"><%= name.last %></span></div>
        <div>
            <% whois.forEach(function(item) {  %>
            <span class="col-pri">//</span> <span class="col-sec"> <%= item %></span>
            <% }); %>
        </div>

        <div class="pure-g">
            <div class="pure-u-1-2">
                <h3><i class="<%= theme.icons.about %>"></i> About</h3>
                <% for (var item in about) { %>
                <div class="pure-g">
                    <div class="pure-u-5-24 col-sec capitalize"><%= item %></div>
                    <div class="pure-u-3-24 center-text">
                        <i class="<%= theme.icons.details.shift() %>"></i>
                    </div>
                    <div class="pure-u-16-24"><%= about[item] %></div>
                </div>
                <% } %>
            </div>

            <div class="pure-u-1-2">
                <h3><i class="<%= theme.icons.skills %>"></i> Skills</h3>
                <% for (stype in skills) { %>
                <div class="pure-g">
                    <div class="pure-u-4-24 col-sec capitalize"><%= stype %></div>
                    <div class="pure-u-2-24"><i class="<%= theme.icons[stype] %>"></i></div>
                    <div class="pure-u-8-24">
                        <% for (var skill in skills[stype]) { %>
                        <div><%= skill %></div>
                        <% } %>
                    </div>
                    <div class="pure-u-10-24">
                        <% for (var skill in skills[stype]) { %>
                        <div class="col-pri">
                            <% _.times(skills[stype][skill], function(){ %>
                            <i class="<%= theme.icons.level %>"></i>
                            <% }); %>
                        </div>
                        <% } %>
                    </div>
                </div>
                <% } %>
            </div>
        </div>

        <div class="pure-u-2-2">
            <h3><i class="<%= theme.icons.experience %>"></i> Experience</h3>
            <% experiences.forEach(function (experience) {  %>
            <div style="margin-top:9px;" class="pure-g">
                <div class="pure-u-1-5 col-sec">
                  <% experience.timespans.forEach(function (timespan) {  %>
                      <div>
                          <%= timespan %>
                      </div>
                  <% }); %>
                </div>
                <div class="pure-u-4-5">
                    <b><%= experience.title %></b> <span class="col-pri">@ </span><%= experience.company %>
                    <!--<p><%= experience.descr %></p>-->
                    <ul>

                    </ul>
                </div>
            </div>
            <div class="pure-g">
              <div class="pure-u-2-24"></div>
              <div class="pure-u-22-24">
                <ul>
                  <% experience.bullets.forEach(function (bullet) {  %>
                      <li><%= bullet %>
                  <% }); %>
                </ul>
              </div>
            </div>
            <% }); %>
        </div>

        <div class="pure-u-2-2">
            <h3><i class="<%= theme.icons.projects %>"></i> Side Projects</h3>
            <div class="pure-g">
              <div class="pure-u-2-24"></div>
              <div class="pure-u-22-24">
                <ul>
                  <% projects.forEach(function (project) { %>
                  <li><%= project %>
                  <% }); %>
                </ul>
              </div>
            </div>
        </div>

        <div class="pure-u-2-2">
            <h3><i class="<%= theme.icons.education %>"></i> Currently Attending</h3>
            <% for (var institute in currentEducation) { %>
              <div class="pure-g">
                <div class="pure-u-1-5 col-sec capitalize"><%= institute %></div>
                <div class="pure-u-2-5">
                    <div>
                        <b>Major:</b> <%= currentEducation[institute].major %>
                    </div>
                </div>
                <div class="pure-u-2-5">
                    <div>
                        <b>Major GPA:</b> <%= currentEducation[institute].mgpa %>
                    </div>
                </div>
            </div>
            <div class="pure-g">
              <div class="pure-u-2-24"></div>
              <div class="pure-u-11-24">
                <ul>
                    <% currentEducation[institute].notes.forEach(function (note) { %>
                    <li><%= note %>
                    <% }); %>
                </ul>
              </div>
              <div class="pure-u-11-24">
                <ul>
                    <% currentEducation[institute].clubs.forEach(function (note) { %>
                    <li><%= note %>
                    <% }); %>
                </ul>
              </div>
            </div>
            <% } %>
        </div>


    </div>
</div>
