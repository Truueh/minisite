<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="MiniSite.Remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" onsubmit="return false">
        <table class="delete_update_table">
            <tr>
                <td>
                    <table style="width: 100%; border: 2px solid gray;">
                        <tr>
                            <td>
                                <h1 class="delete_update_question">Username:</h1>
                            </td>
                            <td>
                                <h1 class="delete_update_question"><%=username %></h1>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%; border: 2px solid gray;">
                        <tr>
                            <td>
                                <h1 class="delete_update_question">First Name:</h1>
                            </td>
                            <td>
                                <h1 class="delete_update_question"><%=firstname %></h1>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%; border: 2px solid gray;">
                        <tr>
                            <td>
                                <h1 class="delete_update_question">Last Name:</h1>
                            </td>
                            <td>
                                <h1 class="delete_update_question"><%=lastname %></h1>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <button type="submit" id="delete" name="delete" style="width: 100%; height: 50px;background-color: dimgray; font-size: 25px;">Delete</button>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>