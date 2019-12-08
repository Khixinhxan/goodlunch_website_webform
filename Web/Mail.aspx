<%@ Page Title="" Language="C#" MasterPageFile="~/mainchin.master" AutoEventWireup="true" CodeFile="Mail.aspx.cs" Inherits="Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 120px">From:</td>
            <td>
                <asp:TextBox ID="FromGM" runat="server" style="margin-left: 0px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FromGM" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 120px">To:</td>
            <td>
                <asp:TextBox ID="ToGM" runat="server" style="margin-left: 0px" Width="215px" placeholder="goodlunchkitchen@gmail.com" ReadOnly="True" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ToGM" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 120px">UserName:</td>
            <td>
                <asp:TextBox ID="UserGM" runat="server" style="margin-left: 0px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserGM" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 120px;">PassWord:</td>
            <td>
                <asp:TextBox ID="PassGM" runat="server" style="margin-left: 0px" Width="215px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassGM" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 120px">Subject:</td>
            <td>
                <asp:TextBox ID="SubjectGM" runat="server" style="margin-left: 0px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SubjectGM" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Message"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="MessGM" runat="server" TextMode="MultiLine" Height="102px" style="margin-left: 0px" Width="450px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" BackColor="White" BorderColor="#FF3300" BorderStyle="Solid" ForeColor="#FF3300" />
    </p>

</asp:Content>


