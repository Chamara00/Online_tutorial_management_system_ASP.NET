<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="StudentManagement.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row my-5">
            <div class="col-md-3">

            </div>

            <div class="col-md-6">
            <div class="card">
                <div class="card-body">


                    <div class="row">
                        <center>
                        <div class="col">
                            <h3>Checkout</h3>
                        </div>
                            </center>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label>Card holder name <sup style="color:red">*</sup></label>
                            <div class="form-group">
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"
                                        placeholder="Card holder name" style="text-transform: uppercase;">

                                    </asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter your name" style="color:red; font-size:small"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label>Card number <sup style="color:red">*</sup></label>
                            <div class="form-group">
                                 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                                        placeholder="Card number" TextMode="Number">

                                    </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter your card number" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ControlToValidate="TextBox2" ErrorMessage="* Please enter a valid 16-digit card number"
        ValidationExpression="^\d{16}$" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Exp date <sup style="color:red">*</sup></label>
                            <div class="form-group">
                                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="MM/YY" TextMode="Number">

                                    </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Please enter exp date" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" 
        ValidationExpression="(0[1-9]|1[0-2])/[0-9]{2}" ErrorMessage="* Please enter a valid expiration date in the format MM/YY" 
        style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                        <div class="col-md-6">
                            <label>CVC <sup style="color:red">*</sup></label>
                            <div class="form-group">
                                 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="CVC" TextMode="Number">

                                    </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Please enter cvc" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Please enter a valid 3-digit CVC" ValidationExpression="\d{3}" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <p>By clicking the button you confirm to have accepted Terms os Service</p>
                            </div>
                        
                    </div>
                    
                    <div class="row my-4">
                             <div class="col">
                                 <center>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-lg" style="width:100%" ID="Button1" runat="server" Text="Pay"/>
                                    </div>
                                 </center>
                             </div>

                            
                    </div>
                </div>
            </div>
                </div>

            <div class="col-md-3">

            </div>
        </div>
    </div>
</asp:Content>
