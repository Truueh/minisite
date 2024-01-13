<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="MiniSite.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="delete_update_table">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <h1 class="delete_update_question">New First Name: </h1>
                        </td>
                        <td>
                            <input type="text" name="newfirstname" placeholder="<%=previousFNameHolder %>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h1 class="delete_update_question">New Last Name: </h1>
                        </td>
                        <td>
                            <input type="text" name="newlastname" placeholder="<%=previousLNameHolder %>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h1 class="delete_update_question">New Age: </h1>
                        </td>
                        <td>
                            <input type="text" name="newage" placeholder="<%=previousAgeHolder %>"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update" name="update" style="width: 100%; height: 50px; background-color: dimgrey; font-size: 25px" />
            </td>
        </tr>
    </table>
</asp:Content>
