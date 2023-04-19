<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="teacher_signup.aspx.cs" Inherits="StudentManagement.teacher_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto my-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/generaluser.png" width="100"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher sign up</h3>
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
                                <label>First name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="First name">

                                    </asp:TextBox>
                            </div>
                                </div>


                            <div class="col-md-5">
                                <label>Last name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Last name">

                                    </asp:TextBox>
                            </div>

                        </div>

                                <div class="col-md-2">
                                <label>Gender</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select"></asp:ListItem>
                                        <asp:ListItem Text="M"></asp:ListItem>
                                        <asp:ListItem Text="F"></asp:ListItem>
                                    </asp:DropDownList>

                                    
                                 </div>
                                </div>
                            </div>
                           

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="+94xxxxxxxxx" TextMode="Number"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-7">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="username@example.com" TextMode="Email"></asp:TextBox>
                                </div>
                        </div>
                    </div>

                        <div class="row my-2">
                            <div class="col-md-4">
                                <label>
                                    Date of birth
                                </label>
                                <div class="form-group"></div>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                        placeholder="mm/dd/yyyy" TextMode="Date"></asp:TextBox>
                                </div>

                            <div class="col-md-4">
                                <label>Syllabus</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Local" Value="Local"></asp:ListItem>
                                        <asp:ListItem Text="London" Value="London"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                </div>
                            
                               

                            </div>


                        <div class="row my-2">
                          <div class="col">
                              <label>Education qualifications</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                      placeholder="Education qualifications"></asp:TextBox>
                              </div>
                          </div>
                      </div>      
                                
                      <div class="row my-2">
                          <div class="col">
                              <label>Address</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                              </div>
                          </div>
                      </div>      


                        <div class="row my-2">
                          <div class="col-md-4">
                              <label>Class fee (Rs.)</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                      placeholder="Class fee"></asp:TextBox>
                              </div>
                          </div>
                            <div class="col-md-4">
                                <label>Prefered media</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Google Meets" Value="Google Meets"></asp:ListItem>
                                        <asp:ListItem Text="Microsoft Teams" Value="Microsoft Teams"></asp:ListItem>
                                        
                                    </asp:DropDownList>
                                </div>
                                    </div>
                      </div>  
                        
                        
                                
                      <div class="row my-4">
                             <div class="col">
                                 <center>
                                 <span class="badge rounded-pill text-bg-success">Bank details</span>
                                     </center>
                             </div>



                          <div class="row my-2">
                            <div class="col-md-4">
                                <label>Account No.</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server" 
                                        placeholder="Account No." TextMode="Number"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-4">
                                <label>Bank name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" 
                                        placeholder="Bank name"></asp:TextBox>
                                </div>
                        </div>
                    </div>
                        


                        <div class="row my-4">
                             <div class="col">
                                 <center>
                                 <span class="badge rounded-pill text-bg-success">User credentials</span>
                                     </center>
                             </div>

                            
                    </div>


                         <div class="row my-2">
                            <div class="col-md-6">
                                <label>Teacher ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" 
                                        placeholder="User ID"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                        placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>
                        </div>
                    </div>


                         <div class="row my-4">
                             <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block" Style="width: 100%" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />
                                    </div>
                             </div>

                            
                    </div>



                            </div>

                    
                        </div>

                <a href="homepage.aspx"><< Back to Home</a>
                </div>
            </div>

                <a href="homepage.aspx"><< Back to Home</a>
        </div>
  





         </div>









</asp:Content>
