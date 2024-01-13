<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiniSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form action="About.aspx" method="post" name="LoginForm">
        <table class="registerlogintable" style="width: 35%;">
            <tr>
                <td>
                    <h1 class="registerloginheader">Log in</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="margin-left: auto; margin-right: auto">
                        <tr>
                            <td>
                                <h2 class="question">Username:</h2>
                            </td>
                            <td>
                                <input type="text" name="username" id="username" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h2 class="question">Password:</h2>
                            </td>
                            <td>
                                <input type="password" name="password" id="password" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <td style="width:100%">
                                <button type="submit" class="submitreset" id="submit" onclick="return VerifyLogin()">sign in</button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
