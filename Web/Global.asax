<%@ Application Language="C#" %>
<%@ Import Namespace="MOONLY.BusinessLogic" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["SoNguoiOnLine"] = 0;

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        XuLyCapNhatThongKeTruyCap xuly = new XuLyCapNhatThongKeTruyCap();
        xuly.Thucthi();
        // Code that runs when a new session is started
        Application["SoNguoiOnLine"] = (int)Application["SoNguoiOnLine"] + 1;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application["SoNguoiOnLine"] = (int)Application["SoNguoiOnLine"] - 1;
    }

</script>
