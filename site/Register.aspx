<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MiniSite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form action="About.aspx" method="post" name="RegisterForm">
    <table class="registerlogintable" style="width: 35%;">
        <tr>
            <td>
                <h1 class="registerloginheader">Register</h1>
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
                    <tr>
                        <td>
                            <h2 class="question">Verify Passwword:</h2>
                        </td>
                        <td>
                            <input type="password" name="verifypassword" id="verifypassword" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">First Name:</h2>
                        </td>
                        <td>
                            <input type="text" name="fname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Last Name:</h2>
                        </td>
                        <td>
                            <input type="text" name="lname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Email:</h2>
                        </td>
                        <td>
                            <input type="text" name="email" id="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Gender:</h2>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <h3>Male</h3>
                                    </td>
                                    <td>
                                        <input type="radio" name="gender" value="male" />
                                    </td>
                                    <td>
                                        <h3>Female</h3>
                                    </td>
                                    <td><input type="radio" name="gender" value="female" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Phone Number:</h2>
                        </td>
                        <td>
                            <input type="text" name="phone" id="phone" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Age:</h2>
                        </td>
                        <td>
                            <select name="age">
                                <option value="under16">Under 16</option>
                                <option value="under18">Older than 16 and younger than 18</option>
                                <option value="18+">18+</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Areas Of Interest:</h2>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <h3>Gaming</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="hobby" value="gaming" />
                                    </td>

                                    <td>
                                        <h3>School</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="hobby" value="school"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>Coding</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="hobby" value="coding"/>
                                    </td>

                                    <td>
                                        <h3>Computers</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="hobby" value="computers"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Address:</h2>
                        </td>
                        <td>
                            <textarea rows="3" cols="35" style="width: 250px; height: 70px" name="address">
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Prefered Games:</h2>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <h3>CS:GO</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="games" value="cs:go" />
                                    </td>

                                    <td>
                                        <h3>League Of Legends</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="games" value="leagueoflegends" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>DOTA 2</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="games" value="dota 2"/>
                                    </td>

                                    <td>
                                        <h3>Call Of Duty</h3>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="games" value="CoD"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="question">Platform:</h2>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <h3>PC</h3>
                                    </td>
                                    <td>
                                        <input type="radio" name="platform" value="PC"/>
                                    </td>
                                    <td>
                                        <h3>Console</h3>
                                    </td>
                                    <td><input type="radio" name="platform" value="Console"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                            <button type="submit" class="submitreset" id="submit" onclick="return ValidForm()">Create Account</button>
                        </td>
                        <td style="width:50%">
                            <button type="reset" class="submitreset" id="reset">Reset</button>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
    <a href="register.aspx"><h2 class="up">go up</h2></a>
</asp:Content>
