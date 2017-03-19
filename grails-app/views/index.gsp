<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <!-- 从这里开始，对应的是主内容 -->
    <!-- 这是圣杯的大图 -->
    <!--
    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>
    -->

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

<div class="container content">
    <div class="login">
        <ul style="font-family:微软雅黑;font-size:40px;margin-left:130px;margin-top:100px;">
            <h4 style="color:#205E74">煤层气集输系统</h4>
        </ul>
        <div  style="margin-rigtht:10px;margin-top:-100px;">
            <div class="login-icon" style="width:auto;margin-top:90px;margin-right:10px;float:right;">
                <img src="images/logo.ico" alt="煤层气集输系统" />
            </div>
            <form id="login-form" action="login.action" method="post" style="margin-left: 250;">
                <div class="login-form"  style="margin-bottom:20px;float:right;width:300px;">
                    <div class="control-group">
                        <input type="text" class="login-field" value="" placeholder="输入用户名" id="username" name="username"/>
                        <label class="login-field-icon fui-man-16" for="username"></label>
                    </div>

                    <div class="control-group">
                        <input type="password" class="login-field" value="" placeholder="输入密码" id="password" name="password" />
                        <label class="login-field-icon fui-lock-16" for="password"></label>
                    </div>

                    <div><input type="submit" class="btn btn-warning btn-block" value="登录" /></div>
                    <div><input type="button" class="btn btn-primary btn-block" value="注册" onclick="$('#register_modal').modal()"/></div>

                </div>
            </form>
        </div>
    </div>

</div>

</body>
</html>
