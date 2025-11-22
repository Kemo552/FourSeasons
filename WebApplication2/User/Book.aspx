<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplication2.User.Book" %>

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
    <!-- book section -->
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-center">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
                <h2>Contact</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">

                            <div>
                                <asp:RequiredFieldValidator ID="rvfName" runat="server" ErrorMessage="Name is required"
                                    ForeColor="Red" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ErrorMessage="Email is required"
                                    ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="rvfSubject" runat="server" ErrorMessage="Subject is required"
                                    ForeColor="Red" ControlToValidate="txtSubject" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="rvfMessage" runat="server" ErrorMessage="Message is required"
                                    ForeColor="Red" ControlToValidate="txtMessage" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Enter your Query/Feedback"></asp:TextBox>
                            </div>
                            <div class="btn_box">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-warning rounded-pill pl-4 pr-4 text-white"
                                    OnClick="btnSubmit_Click"/>
                            </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="map_container ">
                        <div id="googleMap"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end book section -->
</asp:Content>
