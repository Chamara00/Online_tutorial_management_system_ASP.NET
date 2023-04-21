
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
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                            placeholder="Student ID" ReadOnly="false">

                                    </asp:TextBox>
                                      
                                        </div>
                            </div>
                                </div>


                           

                            </div>
                           

                        
                       
                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Teacher ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"
                                        placeholder="Teacher ID" ReadOnly="false" >

                                    </asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Please enter teacher Id" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>
                                </div>


                            </div>

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Class name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"
                                        placeholder="Class name" ReadOnly="false">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="* Please enter subject Id" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>
                                </div>



                            </div>

                         <div class="row my-2">
                            <div class="col-md-5">
                                <label>Payment amount</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"
                                        placeholder="Payment amount" TextMode="Number" ReadOnly="false">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox11" ErrorMessage="* Please enter payment" style="color:red; font-size:small"></asp:RequiredFieldValidator>
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
                                     <asp:Button class="btn btn-primary" Style="width: 100%" ID="Button" runat="server" Text="Pay now" OnClick="Button_Click" />
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
