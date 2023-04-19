<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="StudentManagement.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-md-6 mx-auto my-5">
            <div class="card">
                    <div class="card-body">
                        <div class="row">
                            
                                <div class="form-group my-3">
                                       <a href="student login.aspx"> <input class="btn btn-success btn-lg btn-block" style="width:100%" id="Button1" type="button" value="Login as a student"/></a>
                                    

                            </div>
                            <br /><br />
                            
                        </div>
                        <div class="row">
                            <div class="form-group my-3">
                                       <a href="teacher login.aspx"> <input class="btn btn-info btn-lg btn-block" style="width:100%" id="Button2" type="button" value="Login as a teacher" /></a>
                                    

                            </div>
                        </div>
                        </div>
                </div>
            </div>
    </div>


</asp:Content>
