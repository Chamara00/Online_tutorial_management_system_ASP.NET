<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="paymentform.aspx.cs" Inherits="StudentManagement.paymentform" %>
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
                                    <h3>Payment form</h3>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <hr>
                            </div>
                        </div>

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Student ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="Student ID" ReadOnly="True" TextMode="Number">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Student name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Student name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>
                           

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="+94xxxxxxxxx" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-7">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="username@example.com" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                        </div>
                    </div>

                       
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Teacher ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"
                                        placeholder="Teacher ID" ReadOnly="True" TextMode="Number">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Teacher name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"
                                        placeholder="Teacher name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Subject ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"
                                        placeholder="Subject ID" ReadOnly="True" TextMode="Number">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Subject name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"
                                        placeholder="Subject name" ReadOnly="True">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>

                         <div class="row my-2">
                            <div class="col-md-5">
                                <label>Payment amount</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"
                                        placeholder="Payment amount" TextMode="Number" ReadOnly="True">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-7">
                                <label>Payment date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"
                                        placeholder="Payment date" TextMode="Date">

                                    </asp:TextBox>
                            </div>

                        </div>

                            </div>
                        


                            
                    </div>


                         <div class="row my-4">
                             <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary" style="width:100%" ID="Button" runat="server" Text="Pay now" />
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
                                    <h3>Your payment history</h3>
                                   
                                    <asp:Label CssClass="badge rounded-pill text-bg-success" ID="Label2" runat="server" Text="Your payment info"></asp:Label>
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                       
                    </div>


                         

                            
                    </div>



            </div>


            </div>
         </div>




</asp:Content>
