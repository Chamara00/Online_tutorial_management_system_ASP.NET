<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="teacherprofile.aspx.cs" Inherits="StudentManagement.teacherprofile" %>
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
                                    <img src="images/generaluser.png" width="100"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your profile</h3>
                                    <span>Account Status - </span>
                                    <asp:Label CssClass="badge rounded-pill text-bg-success" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                                        <asp:ListItem Text="Male"></asp:ListItem>
                                        <asp:ListItem Text="Female"></asp:ListItem>
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
                                    placeholder="mm/dd/yyyy" TextMode="Date" ReadOnly="True"></asp:TextBox>
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
                            
                                <div class="col-md-4">
                                <label>Subject</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Maths" Value="Maths"></asp:ListItem>
                                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Combined Maths" Value="Combined Maths"></asp:ListItem>
                                        <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                                        <asp:ListItem Text="Chemistry" Value="Chemistry"></asp:ListItem>
                                       
                                    </asp:DropDownList>
                                </div>
                                    </div>

                            </div>

                        <div class="row my-2">
                          <div class="col">
                              <label>Education qualifications</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
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
                                  <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
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


                        <div class="row my-2">
                            <div class="col-md-2">
                                <label>
                                    Teaching grades
                                </label>
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-1">
                                <label>5</label>
                                <asp:CheckBox ID="CheckBox1" runat="server"/>
                            </div>
                            <div class="col-md-1">
                                <label>6</label>
                                <asp:CheckBox ID="CheckBox2" runat="server"/>
                            </div>
                            <div class="col-md-1">
                                <label>7</label>
                                <asp:CheckBox ID="CheckBox3" runat="server"/>
                                </div>
                                <div class="col-md-1">
                                    
                                <label>8</label>
                                <asp:CheckBox ID="CheckBox4" runat="server"/>
                            </div>
                                <div class="col-md-1">
                                <label>9</label>
                                <asp:CheckBox ID="CheckBox5" runat="server"/>
                            </div>
                                <div class="col-md-1">
                                <label>10</label>
                                <asp:CheckBox ID="CheckBox6" runat="server"/>
                            </div>
                                <div class="col-md-1">
                                <label>11</label>
                                <asp:CheckBox ID="CheckBox7" runat="server"/>
                            </div>
                                <div class="col-md-1">
                                <label>12</label>
                                <asp:CheckBox ID="CheckBox8" runat="server"/>
                            </div>
                            <div class="col-md-1">
                                <label>13</label>
                                <asp:CheckBox ID="CheckBox9" runat="server"/>
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
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server"
                                        placeholder="User ID" ReadOnly="True"></asp:TextBox>

                                    </div>

                            </div>

                            <div class="col-md-4">
                                <label>Old password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                        placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                        </div>

                             <div class="col-md-4">
                                <label>New password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                        </div>
                    </div>


                         <div class="row my-4">
                             <div class="col-8 mx-auto">
                                 <center>
                                 <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Update" />
                                    </div>
                                 </center>
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
                                    <img src="images/books1.png" width="100"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Your classes</h3>
                                   
                                    <asp:Label CssClass="badge rounded-pill text-bg-success" ID="Label2" runat="server" Text="Your class info"></asp:Label>
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
