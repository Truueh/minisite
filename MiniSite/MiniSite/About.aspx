<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MiniSite.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 70%; vertical-align: top">
                <table style="width: 100%;">
                    <tr style="background-color: rgb(48, 44, 44);">
                        <td class="aboutimagetd" style="width: 20%;border-right: 2px solid white;">

                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <h1 class="jack">cloud9</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="images/logo.png" class="aboutimage"/>
                                    </td>
                                </tr>
                            </table>
                        </td>

                        <td class="abouttexttd">
                            <p class="abouttext">Cloud9 formed when Jack Etienne bought the former Quantic Gaming League
                                of Legends roster. Following the success of the Cloud9 LoL team in the North American League
                                of Legends Championship Series, the team was able to expand to field rosters in other esports.
                                In 2015, Cloud9's Heroes of the Storm team won the first Heroes of the Storm World Championship,
                                becoming the inaugural winner of the championship. In 2018, Cloud9's Counter-Strike: Global Offensive
                                roster became the first American team to win a major championship, securing a 2-1 victory against FaZe Clan
                                in the ELEAGUE Boston: Major 2018 final.
                            </p>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <div class="spacer"></div>
                        </td>
                    </tr>

                    <tr style="background-color: rgb(48, 44, 44); border: 2px solid rgb(48, 44, 44); border-radius: 2%;">
                        <td class="aboutimagetd" style="width: 20%;border-right: 2px solid white;">
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <h1 class="jack">jack ettine</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="images/founder.jpg" class="aboutimage"/>
                                    </td>
                                </tr>
                            </table>
                        </td>

                        <td class="abouttexttd">
                            <p class="abouttext">Jack Etienne co-founded Cloud9 in 2012 and has since grown it into one of 
                                the premier esports brands in the world.The commitment Jack has poured into his organization 
                                has earned Cloud9 the accolades of Best Esports Team at the 2016 Game Awards and Most Valuable 
                                Esports Team at SXSW 2015. In addition to the industry recognition, Jack has built Cloud9 into 
                                a viewership powerhouse, and was the first North American team owner to provide his players benefits
                                including matching 401K, health insurance, and free tax and financial planning. Jack is looking forward
                                to being a part of the esports world for many years to come.
                            </p>
                        </td>
                    </tr>
                </table>
            </td>

            <td style="vertical-align: top">
                <table style="width: 60%; border-collapse: collapse; margin-left: auto;">
                    <tr>
                        <td style="background-color: white;">
                            <h1 class="partnerslisttitle">Sponsors</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 100%; height: 100%;">
                                <tr>
                                    <td class="partnerstabletd" style="background-color: rgb(207, 213, 251);">
                                        <h2 class="partnerlistpartner">red bull</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: #76b8f8">
                                        <h2 class="partnerlistpartner">OMEN by HP</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: rgb(207, 213, 251)">
                                        <h2 class="partnerlistpartner">U.S. Air Force</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: #76b8f8">
                                        <h2 class="partnerlistpartner">Twitch</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: rgb(207, 213, 251)">
                                        <h2 class="partnerlistpartner">HTC</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: #76b8f8">
                                        <h2 class="partnerlistpartner">HyperX</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: rgb(207, 213, 251)">
                                        <h2 class="partnerlistpartner">MSI</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="partnerstabletd" style="background-color: #76b8f8">
                                        <h2 class="partnerlistpartner">LoLwiz</h2>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <a href="about.aspx"><h2 class="up" style="color: dimgray">go up</h2></a>
</asp:Content>
