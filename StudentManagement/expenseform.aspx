<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="expenseform.aspx.cs" Inherits="StudentManagement.expenseform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 my-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher salary payment</h3>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row my-2">
                            <div class="col-md-4">
                                <label>Teacher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="Teacher ID" ReadOnly="False">

                                    </asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                        </div>
                            </div>
                                </div>


                            <div class="col-md-4">
                                <label>First name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="First name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>
                            <div class="col-md-4">
                                <label>Last name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"
                                        placeholder="Last name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>
                           


                       

                         <div class="row my-2">

                             <div class="col-md-3">
                                <label>Salary ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"
                                        placeholder="SalaryID" TextMode="Number">

                                    </asp:TextBox>
                            </div>
                                </div>

                            <div class="col-md-4">
                                <label>Payment amount</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"
                                        placeholder="Payment amount" TextMode="Number">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-5">
                                <label>Payment date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"
                                        placeholder="Payment date" TextMode="Date">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>

                        <div class="row my-2">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <span class="badge text-bg-success">Success</span>
                                    </div>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Account No.</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"
                                        placeholder="Account No."  TextMode="Number" ReadOnly="True">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Bank name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                                        placeholder="Bank name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>


                            
                    </div>


                         <div class="row my-4">
                             <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary" Style="width: 100%" ID="Button" runat="server" Text="Transfered" OnClick="Button_Click" />
                                 </div>
                         </div>


                       



                            </div>

                    
                        </div>

                
                </div>


            <div class="col-md-7 my-5">



                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Salary payment history</h3>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT * FROM [Expense]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                            </div>
                        </div>

                       
                    </div>


                         

                            
                    </div>



            </div>


            </div>
         </div>



</asp:Content>
