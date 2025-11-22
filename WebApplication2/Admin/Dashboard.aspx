<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication2.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper pt-0 pb-0">
                <div class="align-align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">

                        <%-- Categories --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-muffin bg-c-blue card1-icon"></i>
                                    <span class="text-c-blue f-w-600">Categories</span>
                                    <h4><% Response.Write(Session["category"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Category.aspx"><i class="text-c-blue f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <%-- Products --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-fast-food bg-c-pink card1-icon"></i>
                                    <span class="text-c-pink f-w-600">Products</span>
                                    <h4><% Response.Write(Session["product"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Product.aspx"><i class="text-c-pink f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <%-- Total Orders --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-muffin bg-c-green card1-icon"></i>
                                    <span class="text-c-green f-w-600">Total Orders</span>
                                    <h4><% Response.Write(Session["orders"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Report.aspx"><i class="text-c-green f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Delivered Items --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-muffin bg-c-yellow card1-icon"></i>
                                    <span class="text-c-yellow f-w-600">Delivered Items</span>
                                    <h4><% Response.Write(Session["delivered"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="OrderStatus.aspx"><i class="text-c-yellow f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <%-- Pending Items --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-delivery-time bg-c-blue card1-icon"></i>
                                    <span class="text-c-blue f-w-600">Pending Items</span>
                                    <h4><% Response.Write(Session["pending"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="OrderStatus.aspx"><i class="text-c-blue f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <%-- Users --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-users-social bg-c-pink card1-icon"></i>
                                    <span class="text-c-pink f-w-600">Users</span>
                                    <h4><% Response.Write(Session["users"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Users.aspx"><i class="text-c-pink f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <%-- Sold Amounts --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-money-bag bg-c-green card1-icon"></i>
                                    <span class="text-c-green f-w-600">Sold Amounts</span>
                                    <h4><% Response.Write(Session["sold"]); %>$</h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Report.aspx"><i class="text-c-green f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Feedback --%>
                        <div class="col-sd-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-support-faq bg-c-yellow card1-icon"></i>
                                    <span class="text-c-yellow f-w-600">Feedback</span>
                                    <h4><% Response.Write(Session["feedback"]); %></h4>
                                    <div>
                                        <span class="f-10 m-t-10 text-muted">
                                            <a href="Contacts.aspx"><i class="text-c-yellow f-16 icofont icofont-eye-alt m-r-15"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
