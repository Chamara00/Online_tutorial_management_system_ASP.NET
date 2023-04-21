 <%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="student_signup.aspx.cs" Inherits="StudentManagement.student_signup" %>
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
                                    <h3>Student sign up</h3>
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
                                <label>First name <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                        placeholder="First name">

                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Please enter your first name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                            </div>
                                </div>


                            <div class="col-md-5">
                                <label>Last name <sup style="color:red">*</sup></label>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Last name">

                                    </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Please enter your last name" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                <div class="form-group">
                            </div>

                        </div>

                                <div class="col-md-2">
                                <label>Gender <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem value="">Select</asp:ListItem>
                                        <asp:ListItem value="M">Male</asp:ListItem>
                                        <asp:ListItem value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select gender" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    
                                 </div>
                                </div>
                            </div>
                           

                        <div class="row my-2">
                            <div class="col-md-5">
                                <label>Contact No.<sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="07xxxxxxxx" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter contact no." style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^07\d{8}$"  ErrorMessage="* Invalid format" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                    </div>

                            </div>

                            <div class="col-md-7">
                                <label>Email <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="username@example.com" TextMode="Email">

                                    </asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter email" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="* Invalid format" style="color:red; font-size:small"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                    </div>

                        <div class="row my-2">
                            <div class="col-md-4">
                                <label>
                                    Date of birth <sup style="color:red">*</sup>
                                </label>
                                <div class="form-group"></div>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                        placeholder="mm/dd/yyyy" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Please enter DOB" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                
                                </div>

                            <div class="col-md-4">
                                <label>Syllabus <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="Local">Local</asp:ListItem>
                                        <asp:ListItem Value="London">London</asp:ListItem>
                                    </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="* Select syllabus" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    
                                </div>
                                </div>
                            
                                <div class="col-md-4">
                                <label>Grade <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>
                                        <asp:ListItem Value="8">8</asp:ListItem>
                                        <asp:ListItem Value="9">9</asp:ListItem>
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem Value="11">11</asp:ListItem>
                                        <asp:ListItem Value="12">12</asp:ListItem>
                                        <asp:ListItem Value="13">13</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList3" ErrorMessage="* Select grade" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                </div>
                                    </div>

                            </div>
                                
                      <div class="row my-2">
                          <div class="col">
                              <label>Address <sup style="color:red">*</sup></label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Please enter address" style="color:red; font-size:small"></asp:RequiredFieldValidator>
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
                                <label>Student ID <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" 
                                        placeholder="Student ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Please enter student ID" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                    </div>

                            </div>

                            <div class="col-md-6">
                                <label>Password <sup style="color:red">*</sup></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                        placeholder="Password" TextMode="Password" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8" ErrorMessage="* Please enter password" style="color:red; font-size:small"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage=" Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character" 
        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$" 
        style="color:red; font-size:small"></asp:RegularExpressionValidator>
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
  











</asp:Content>
