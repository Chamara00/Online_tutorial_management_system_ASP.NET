<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="teacher login.aspx.cs" Inherits="StudentManagement.teacher_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto my-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/generaluser.png" width="150"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Student ID <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"
                                        placeholder="Teacher ID">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter your teacher ID" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <br />
                                    <label>Password <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                                        placeholder="Password" TextMode="Password">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter your password" style="color:red; font-size:small"></asp:RequiredFieldValidator>


                                </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block" Style="width: 100%" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <a href="teacher_signup.aspx"><input class="btn btn-info btn-block" style="width:100%" id="Button2" type="button" value="Sign up" /></a>
                                    </div>



                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <a href="homepage.aspx"><< Back to Home</a>
        </div>
    </div>

</div>
</asp:Content>
