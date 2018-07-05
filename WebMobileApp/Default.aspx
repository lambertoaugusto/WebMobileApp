<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebMobileApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Tech</title>

    <meta runat="server" name="viewport" content="width=device-width, initial-scale=1" />

    <link runat="server" rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link runat="server" rel="icon" href="favicon.ico" type="image/ico" />

    <link runat="server" rel="stylesheet" href="jquery.mobile-1.4.5.min.css" />

    <script src="jquery-1.10.2.min.js"></script>
    <script src="jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Home Page --%>
        <div data-role="page" runat="server" id="home">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home" class="ui-btn-active" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#login" data-icon="user" data-theme="a">Login</a></li>
                        <li><a href="#about_home" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <p>Welcome to the Web Tech Mobile Business Application</p>
                <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="gnome_web_browser.png" />
            </div>
        </div>
        <%-- Login Page --%>
        <div data-role="page" runat="server" id="login">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#login" class="ui-btn-active" data-icon="user" data-theme="a">Login</a></li>
                        <li><a href="#about_home" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <p>Login</p>
                <input id="username" type="text" placeholder="Username" runat="server" />
                <input id="password" placeholder="Password" type="password" />
                <%--
                <div runat="server" id="urlhash">
                    <asp:HiddenField ID="hashcontrol" runat="server" Value="" />
                </div--%>
                <br />
                <input id="buttonLogin" type="button" value="Login" /><br/>
            </div>
        </div>
        <%-- About Home Page --%>
        <div data-role="page" runat="server" id="about_home">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#login" data-icon="user" data-theme="a">Login</a></li>
                        <li><a href="#about_home" class="ui-btn-active" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <p>Web Tech Mobile Business Application by Lamberto Augusto</p>
                <asp:Image ID="Image3" runat="server" ImageAlign="Middle" ImageUrl="gnome_web_browser.png" />
            </div>
        </div>
        <%-- Error Login Page --%>
        <div data-role="page" data-rel="dialog" id="ErrorLogin">
            <div data-role="header">
                <h1>Error:</h1>
            </div>
            <div role="main" class="ui-content">
                <p>Username or Password Invalid!</p>
            </div>
        </div>
        <%-- Posts Page --%>
        <div data-role="page"  runat="server" id="posts">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home_logout" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#posts" class="ui-btn-active" data-icon="comment" data-theme="a">Posts</a></li>
                        <li><a href="#home" data-icon="delete" data-theme="a">Logout</a></li>
                        <li><a href="#about_logout" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <h3>Posts</h3>
                <div id="divForm" runat="server">
                    <p>Insert your comment:</p>
                    <textarea id="newComment" runat="server"></textarea>
                    <br />
                    <br />
                    <input id="buttonComments" type="button" value="Submit Comment" />
                    <p>Comments:</p>
                </div>
            </div>
        </div>
        <%-- Home Logout Page --%>
        <div data-role="page" runat="server" id="home_logout">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home_logout" class="ui-btn-active" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#posts" data-icon="comment" data-theme="a">Posts</a></li>
                        <li><a href="#" data-icon="delete" data-theme="a">Logout</a></li>
                        <li><a href="#about_logout" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <p>Welcome to the Web Tech Mobile Business Application</p>
                <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="gnome_web_browser.png" />
            </div>
        </div>
        <%-- About Logout Page --%>
        <div data-role="page" runat="server" id="about_logout">
            <div data-role="header">
                <h1>Web Technologies - Assignment 1</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#home_logout" data-icon="home" data-theme="a">Home</a></li>
                        <li><a href="#posts" data-icon="comment" data-theme="a">Posts</a></li>
                        <li><a href="#home" data-icon="delete" data-theme="a">Logout</a></li>
                        <li><a href="#about" class="ui-btn-active" data-icon="information" data-theme="a">About</a></li>
                    </ul>
                </div>
            </div>
            <div data-role="main" class="ui-content">
                <p>Web Tech Mobile Business Application by Lamberto Augusto</p>
                <asp:Image ID="Image4" runat="server" ImageAlign="Middle" ImageUrl="gnome_web_browser.png" />
            </div>
        </div>
    </form>    
</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        $("#buttonLogin").click(function () {
            username = $("#username").val();
            password = $("#password").val();
            $.ajax({
                type: "POST",
                url: "Default.aspx/CheckLogin",
                data: "{user:'"+ username +"', password:'"+password+"'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (jasonResult) {
                    if (jasonResult.d.result) {
                        $.mobile.changePage('#posts', {});
                    }
                    else {
                        $.mobile.changePage('#ErrorLogin', { role: 'dialog' });
                    }
                }
            });
        });       
    });

    $(document).ready(function () {
        $("#buttonComments").click(function () {
            comment = $("#newComment").val();
            $.ajax({
                type: "POST",
                url: "Default.aspx/InsertComment",
                data: "{comment: '" + comment + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                seccess: function (jasonResult) {
                    alert(comment);
                    //$("#divForm").append("<div><span class='label label-primary'>" + comment + "</span></div>");
                    document.getElementById("#divForm").innerHTML += "<div><span class='label label-primary'>" + comment + "</span></div>";
                    if (comment != "") {
                        document.getElementById("#divForm").innerHTML += "<br>";
                    }                    
                    //$('#divForm').trigger('create');
                    //refreshPage3();
                    //refreshPage();
                    //$.mobile.changePage($('#posts'));
                    //$.mobile.changePage('#posts',{ reloadPage: true, changeHash: false })
                }
            });
            location.reload();
        });

    });

    function refreshPage2(page) {
        // Page refresh
        page.trigger('pagecreate');
        page.listview('refresh');
    }

    function refreshPage() {
        jQuery.mobile.changePage(window.location.href, {
            allowSamePageTransition: true,
            transition: 'none',
            reloadPage: true
        });
    }

    function refreshPage4() {
        $.mobile.loadPage(window.location.href, {
            allowSamePageTransition: true,
            transition: 'slide',
            changeHash: false,
            reloadPage: true
        });
    }
    function refreshPage3() {
        jQuery.mobile.pageContainer.pagecontainer('change', window.location.href, {
            allowSamePageTransition: true,
            transition: 'none',
            reloadPage: true
            // 'reload' parameter not working yet: //github.com/jquery/jquery-mobile/issues/7406
        });
    }

</script>

