<%@ Page Title="" Language="C#" MasterPageFile="~/mainchin.master" AutoEventWireup="true" CodeFile="GoogleMap.aspx.cs" Inherits="GoogleMap" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <%-- <gmaps:GMap ID="GMap1" runat="server"  Height="600px" Width="450px" enableContinuousZoom="true" enableGoogleBar="true"/>--%>
     <cc1:GMap ID="GMap1" runat="server" Height="600px" Width="480px" enableContinuousZoom="true"  enableGoogleBar="true" enableHookMouseWheelToZoom="true"/>
</asp:Content>

