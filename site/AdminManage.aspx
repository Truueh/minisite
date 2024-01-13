<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AdminManage.aspx.cs" Inherits="MiniSite.AdminManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="admin_manage_table">
        <tr>
            <td>
                <form method="post" action="About.aspx">
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="search" />
                            </td>
                            <td>
                                <input type="submit" value="Search" name="submit"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <%=html %> 
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
