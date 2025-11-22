<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        /*for disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-center">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
                <h2>Login</h2>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form_container">
                        <div>
                            <img id="userLogin" width="200" src="../Images/Login.jpg" class=""/>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="rfvPassowrd" runat="server" ErrorMessage="Password is required"
                                ControlToValidate="txtPassowrd" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassowrd" runat="server" placeholder="Enter Passowrd" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="btn_box user_option">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn order_online rounded-pill"
                                OnClick="btnLogin_Click"/>
                            <span class="pl-3 text-black-50">Don't you have an account yet?<a href="Registeration.aspx" class="text-warning">Register here..</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
