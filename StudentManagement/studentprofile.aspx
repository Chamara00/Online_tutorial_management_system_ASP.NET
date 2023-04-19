<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="studentprofile.aspx.cs" Inherits="StudentManagement.studentprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
    </script>
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
                                <label>Grade</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    </asp:DropDownList>
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
                                     <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lmsDBConnectionString %>" SelectCommand="SELECT [StudentID], [ClassName], [TeacherID], [PayID] FROM [Payment]"></asp:SqlDataSource>
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
